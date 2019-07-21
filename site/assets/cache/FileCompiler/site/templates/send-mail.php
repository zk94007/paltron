<?php
if(isset($_POST['content'])) {
    $sendTo = $_POST['sendTo'];
    $message = $_POST['content'];
    $email = $_POST['from'];
    $name = $_POST['sender'];
    
    $message = $sanitizer->sanitize($message, 'unentities');
    $email = $sanitizer->email($email);
    $sendTo = $sanitizer->email($sendTo);
    $log_str = $datetime->date('relative')." From: ".$email." To: ".$sendTo." ";

    $mail = wireMail();

    $mail->from = $email;
    $mail->fromName = $name;

    $sent = $mail->to(array("contact@paltron.com", "pipedrive@paltron.com"))
    ->subject('New form sent through paltron.com')
    ->bodyHTML($message)
    ->send();

    $retData->status = false;
    $retData->alert_text = __("Leider konnte Ihre Nachricht nicht an uns übermittelt werden. Bitte nehmen Sie per E-Mail oder Telefon Kontakt zu uns auf.");

    if($sent) {
        $retData->status = true;
        $retData->alert_text = __("Vielen Dank. Ihre Nachricht wurde erfolgreich an uns übermittelt.");
        $log_str .= "Successfully sent";
    }
    else{
        $log_str .= "Failed";
    }
    $log->save("log", $log_str);
    echo json_encode($retData);
}