<?php

    use PHPMailer\PHPMailer\PHPMailer;

    use PHPMailer\PHPMailer\Exception;



    require './PHPMailer-6.6.0/src/Exception.php';

    require './PHPMailer-6.6.0/src/PHPMailer.php';

    require './PHPMailer-6.6.0/src/SMTP.php';

    
    function smtp($recever_address,$recever_name,$mail_title,$mail_mody){

        $mail = new PHPMailer(true);           

        $mail->IsSMTP(); //設定使用SMTP方式寄信
        $mail->SMTPAuth = true; //設定SMTP需要驗證
        $mail->SMTPSecure = "ssl"; // SMTP主機需要使用SSL連線
        $mail->Host = "smtp.titan.email"; //SMTP主機
        $mail->Port = 465;  //SMTP主機的SMTP埠位為465埠
        $mail->CharSet = "utf8"; //設定郵件編碼
        
        // $mail->Username = "SecondRoom@mspredator.com"; //帳號
        // $mail->Password = "Ash20220411"; //密碼
        
        // $mail->From = "SecondRoom@mspredator.com"; //設定寄件者信箱
        $mail->FromName = "SecondRoom"; //設定寄件者姓名




////////////////////////////////////////////////////////////////////////////
        $mail->Username = "testing@mspredator.com"; //帳號
        $mail->Password = "Waxdqzces123"; //密碼
        
        $mail->From = "testing@mspredator.com"; //設定寄件者信箱
////////////////////////////////////////////////////////////////////////////



        
        $mail->Subject = $mail_title; //設定郵件標題
        $mail->Body = $mail_mody; //設定郵件內容
        $mail->IsHTML(true); //設定郵件內容為HTML
    
        $mail->AddAddress($recever_address, $recever_name); //設定收件者郵件及名稱
        
        if(!$mail->Send()) {        
        echo "Mailer Error: " . $mail->ErrorInfo;        
        } else {        
        echo "Message sent!";        
        }   
    }
 
?>