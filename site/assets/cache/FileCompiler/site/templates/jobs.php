<?php

/**
 * Job overview template
 *
 */

 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/head.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true))); 
?>
<main class="jobs-overview" id="jobs-overview">
    <section class="hero" style="background-image: url('<?php echo $page->header_image->url; ?>');">
        <div class="container grid-lg">
            <div class="columns">
                <div class="column col-12">
                    <h1><?php echo $page->title; ?></h1>
                </div>
            </div>
        </div>
    </section>
        
    <section class="filters">
        <div class="container grid-lg">
            <div class="columns">
                <div class="column col-8 form-group">
                    <label class="form-label" for="jobs-live-search">Search</label>
                    <input v-model="livesearch" id="jobs-live-search" type="text" class="form-input" placeholder="z.B. CTO"> 
                </div>
                <!-- <div class="col-narrow-12 col-wide-6 col-huge-4">
                    <label for="job-skills-filter">Fähigkeiten</label>
                    <select id="job-skills-filter" class="multi-filter" v-model="selectedSkills">
                        <option value="all">Alle anzeigen</option>
                    </select>      
                </div>-->
                <div class="column col-4 form-group">
                    <label class="form-label" for="job-language-filter">Language</label>
                    <select class="form-select" id="job-language-filter" class="multi-filter" v-model="selectedLanguage" v-on:change="changeLanguage">
                        <option v-for="lang in languages" :value="lang.value">{{ lang.text }}</option>
                    </select>     
                </div> 
            </div>               
        </div>
    </section>

    <section class="jobs" v-cloak>
        <div class="container grid-lg">
            <div class="columns">
                <div class="column col-12">
                    <div class="loading" v-show="isLoading">Loading</div>
                    <div class="job-list">
                        <div class="job-list-item" v-for="job in filtered_jobs">
                            <a v-bind:href="'/job/'+ job.id + '/' + job.slug_url + '-' + job.slug_einsatzort + '?lang=' + job.language" v-bind:title="job.name">
                                <div class="inner">
                                    <h4 class="jobname">{{ job.name + " " + job.gender }}</h4>
                                    <span class="labeltag">#{{ job.id }}</span>
                                    <span class="labeltag"><ion-icon name="ios-pin"></ion-icon>{{ job.location }}</span>
                                </div>
                                <ion-icon class="hover-icon" name="ios-folder-open"></ion-icon>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>


<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios@0.18.0/dist/axios.min.js"></script>
<script type="text/javascript">
    Vue.config.debug = true;
    Vue.config.devtools = true;
    var apiURL = document.location.origin + "/job-feed/";
    // console.log(apiURL);
    
    var vm = new Vue({
        el: '#jobs-overview',
        
        data: {
            jobs: [],
            languages: [
                { value: "de", text: "deutsch"},
                { value: "en", text: "englisch"}
                ],
            isLoading: true,
            livesearch: '',
            // selectedSkills: '',
            selectedLanguage: 'de',
        },

        created: function(){
            this.getJobs();
        },

        methods: {
            getJobs: function() {
                axios.get(apiURL)
                    .then(function(response){
                        this.vm.jobs = response.data;
                        this.vm.isLoading = false;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            },
            changeLanguage: function() {
                this.isLoading = true;
                axios.get(apiURL + this.selectedLanguage + "/")
                .then(function(response){                  
                        this.vm.jobs = response.data;
                        this.vm.isLoading = false;
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            }
        },

        computed: {
            filtered_jobs: function () {
                // var filterSkills = this.selectedSkills;
                var filterLanguage = this.selectedLanguage;
                var filterText = this.livesearch;
                var filtered = this.jobs;
                var self = this;

                if(filterText && filterText.length > 0){
                    filtered = filtered.filter(function(job) {
                        return (job.name.toLowerCase().indexOf(self.livesearch.toLowerCase()) > -1) || (job.id.toString().indexOf(self.livesearch.toLowerCase()) > -1);
                    });
                }             
                // if (filterSkills == 'all') {
                //     this.selectedLanguage = "de";
                //     this.selectedSkills = "";
                //     return filtered;

                // }   
                // if(filterSkills && filterSkills.length > 0){
                //     filtered = filtered.filter(function(job) {
                //         return job.skills.some(function(item) {
                //             return filterSkills == item;
                //         });
                //     });
                // }
                if(filterLanguage && filterLanguage.length > 0){
                    filtered = filtered.filter(function(job) {
                        return filterLanguage == job.language;
                    });
                }
                return filtered;
            },
        }
    });
    
</script>
<?php include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/includes/foot.inc",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));