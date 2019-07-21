<?php

class Erecruiterfeed {

    private $data = array();
    private $language = "";
    private $langArr = array('Germany','company','we','are','and','or','you','what','the', 'for','our');

    public function __construct($lang = "de") {
        $this->language = $lang;
        $url = "https://paltron.kandidatenportal.eu/Syndication/Xml?culture={$this->language}";  
        $headers = get_headers($url);
        $response_code = substr($headers[0], 9, 3);

        // Check if URL is accessible - returns HTTP Response Code 200 if everything is okay
        if ($response_code == 200) {
            $response = simplexml_load_file($url);
        } else {
            die("XML Feed konnte nicht geladen werden.");
        } 

        foreach ($response->job as $obj) {

            $this->data[(int)$obj -> id] = array(
                'id'                    => (int) $obj->id,
                'name'                  => (string) $obj->name,
                'subtitle'              => (string) $obj->subTitle,
                'location'              => (string) $obj->location,
                'region'                => (string) $obj->region,
                'occupation_type'       => (string) $obj->occupationType,
                'recruiter'             => (string) $obj->responsibleUser,
                'description'           => (string) $obj->description,
                'company_description'   => (string) $obj->companyDescription,
                'requirements'          => (string) $obj->requirements,
                'additional_info'       => (string) $obj->additionalText,
                'job_footer'            => (string) $obj->footer,
                'content'               => (string) $obj->content,
                'category'              => (string) $obj->jobProfile,
                'category_group'        => (string) $obj->jobProfile->attributes(),
                'apply_url'             => (string) $obj->applyUrl,
                'created'               => (string) $obj->dateOfCreation,
                'last_updated'          => (string) $obj->dateOfUpdate,
                'header_img'            => (string) $obj->headerImg,
                'recruiter_img'         => (string) $obj->contactImg,
                'venture'               => (string) $obj->publishedOn,
                'career_level'          => (string) $obj->careerLevel,
                'language'              => $this->language,
                'slug_url'              => $this->slugify( (string) $obj -> name),
                'slug_einsatzort'       => $this->slugify( (string) $obj -> location),
                'gender'                => (($lang == "de") ? "(m/w/d)" : "(m/f/d)" )
            );
        }
    }

    // Sortierte Liste ausgeben
    private function sorting($sort, $dir) {
        // keine Sortierung ist vorgegeben
        if(is_null($sort) || !array_key_exists($sort, (array)end($this -> data)))
            return $this -> data;
        // init
        $arr_to_sort = $sorted_array = array();
        // Array zum Sortieren aufbauen
        foreach ($this -> data as $ad_id => $item) {
            $arr_to_sort[$ad_id] = $item[$sort];
        }
        // Sortierakgorythmus einbinden / sortieren
        if($dir=="asc")
            asort($arr_to_sort);
        else
            arsort($arr_to_sort);
        // Sortierten Array erstellen
        foreach ($arr_to_sort as  $ad_id => $value) {
            $sorted_array[$ad_id] = $this -> data[$ad_id];
        }
        // Rückgabe
        return $this -> data = $sorted_array;   
    }

    // hole Anzeigen
    public function getAllAds($sort = "created", $dir = "desc") {
        return $this -> sorting(strtolower($sort), strtolower($dir));
    }

    // hole bestimmte Anzeige
    public function getAd($id) {
        // return ad
        if (isset($this -> data[$id])) {
            return (array)$this -> data[$id];
        } else {
           return null;
        }     
    }

    public function getData() {
        return $this -> data;
    }

    public function getAdByCategory($cat) {
        $filtered = array_filter($this->data, function($arr) use($cat) {
            return $arr['category_group'] == $cat;
        });
        return $filtered;
    }

    public function getAllCategories() {
        $filteredCats =[];
        $allCategories = array_column($this->data, 'category');
        foreach ($allCategories as $c) {
            if(!in_array($c, $filteredCats, true)){
                array_push($filteredCats, $c);
            }
        }
        return array_filter($filteredCats);
    }

    public function getElementsByKey($key) {
        $filtered =[];
        $all = array_column($this->data, $key);
        foreach ($all as $item) {
            if(!in_array($item, $filtered, true)){
                array_push($filtered, $item);
            }
        }
        return $filtered;
    }

    public function listConvert($string)
    {
        $to_replace = array(
            '•',
            '-',
            );
        $replace_with = array(
            '',
            ''
            );

        $string = str_replace($to_replace, $replace_with, $string);
        $arr = preg_split('/\R/', $string, -1, PREG_SPLIT_NO_EMPTY);
        // return array_map('trim', $arr);
        return array_map(function($v) { return ltrim($v, '-'); }, $arr);
    }

    public function HtmlFilter($string)
    {
        $pattern = '/[style="[^"]*"|class="[^"]*"|<style type="[^"]*">.*?<\/style>]/';
        return preg_replace($pattern, '', $string);
    }

    public function slugify($string, $separator = '-')
    {
        if (empty($string) || is_null($string)) {
            return;
        } 
        
        $string = strtolower(trim($string));

        $string = str_replace(
        array(
            'ä',
            'ö',
            'ü',
            'ß',
            '(m/w)',
            '(w/m)',
            '(m/f)',
            '(f/m)'
        ),
        array(
            'ae',
            'oe',
            'ue',
            'ss',
            '',
            '',
            '',
            ''
        ), $string);

        $replacements = array(
        '/[\(#0-9\)]/'=> '',
        '/[^0-9a-z]/' => $separator,
        '/'.$separator.'{2,}/' => $separator,
        );

        $string = preg_replace(array_keys($replacements), $replacements, $string);

        if ($string[0] == $separator) {
        $string  = substr($string, 1);
        }
        if ($string[strlen($string) - 1] == $separator) {
            $string = substr($string, 0, -1);
        }
        
        return $string;
    }

    public function contains($haystack, $needles, $offset=4) {
        $found = [];
        foreach($needles as $needle) {
            //if (stripos($haystack, $needle, $offset) !== false) {
            if (preg_match("/\b$needle\b/i", $haystack)) {
                array_push($found, $needle);
            }
        }
        return $found;
    }

    public function trim_location($string) {
        if (strpos($string, ',') !== false) {
            return strstr($string, ',', true);
        } else {
            return $string;
        }
    }

    public function checkLanguage($haystack, $needles, $offset=0) {
        $language = '';
        foreach ($needles as $needle) {
            if (stripos($haystack, $needle, $offset) !== false) {
                $language = "en";
            } else {
                $language = "de";
            }
        }
        return $language;
    }

    public function checkGenderAddon($haystack, $needles, $offset=0) {
        $gender = '';
        foreach ($needles as $needle) {
            if (stripos($haystack, $needle, $offset) !== false) {
                $gender = "(m/f)";
            } else {
                $gender = "(m/w)";
            }
        }
        return $gender;
    }
}
