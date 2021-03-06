<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of registerModuleController
 *
 * @author Dragan
 */
use Triadev\PasswordHashing\PasswordHash;
class registerModuleController extends baseController{
    private $usersModel;
    public function __construct() {
        Loader::loadModel($this, "users", "register");
        $this->usersModel = $this->models['users'];
    }

        public function index() {
            
        $this->template = array();
        if(isset($_POST['register'])){
            
            $password = $_POST['password'];
            $re_password = $_POST['re_password'];
            $salt = $this->generateSalt(22);
            $password_hash = PasswordHash::hash($password, PASSWORD_BCRYPT, 12, $salt);
           
            $data = $this->validate($_POST);
            
            $data['salt'] = $this->generateSalt(22, true).md5(uniqid(rand(), true));
            $usr_mod=$this->usersModel->getUserByEmail($data['email']);
            if(empty($usr_mod)){
                if(!$this->usersModel->insertUser($data,$password_hash)){
                   $this->template['message'] = "Doslo je do greske prilikom registracije!";
                   $this->template['class'] = "alert alert-danger";
                }else{
                    $this->template['message'] = "Uspesno ste se registrovali. Proverite vasu e-postu. {$data['email']}";
                    $this->template['class'] = "alert alert-success";
                    $this->sendConfirmationMail($data);
                }
          }else{
              $this->template['message'] = "Email address is already in use.";
              $this->template['class'] = "alert alert-danger";
          }
        }
        
        Loader::loadView("register", "register", false, $this->template);
    }
    
    public function confirm($salt){
       $salt = $this->filter_input($salt);
       $user = $this->usersModel->getUserBySalt($salt);
       if(!empty($user)){
           $this->usersModel->ID = (int)$user[0]->ID;
           $this->usersModel->active = 1;
           $this->usersModel->salt = $this->generateSalt(22, true).md5(uniqid(rand(), true));
           if($this->usersModel->update()){
               $this->template['message'] = "Ihr Konto ist aktiv! <a href='"._WEB_PATH."login'>Login</a>";
               $this->template['class'] = "alert alert-success";
           }else{
               $this->template['message'] = "Es gibt eine grēks war, als Aufgabe zu aktivieren, versuchen Sie es erneut!";
               $this->template['class'] = "alert alert-danger";
           }   
       }else{
           $this->template['message'] = "Nicht existent Benutzer!";
           $this->template['class'] = "alert alert-danger";
       }
       Loader::loadView('activate', 'register', false, $this->template);
    }
    
    private function sendConfirmationMail($data){
        $mail = new PHPMailer;
        //$mail->SMTPDebug = 3;
        $mail->isSMTP();                                      // Set mailer to use SMTP
        
        if(_ENVIROMENT == 'DEVELOPMENT'){
            $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = 'savicdragan2707@gmail.com';                 // SMTP username
            $mail->Password = 'spodoba1222';                           // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to
        }
        
        $mail->setFrom('savicdragan2707@gmail.com', 'All out shine');
        $mail->addAddress($data['email'], $data['first_name']." ".$data['last_name']);     // Add a recipient
        $mail->addReplyTo('savicdragan2707@gmail.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');

        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
        $mail->isHTML(true);                                  // Set email format to HTML

        $mail->Subject = 'Registration confirmation mail';
        $mail->Body    = 'Sie haben sich erfolgreich Registriert wenn sie ihr Profil aktivieren möchten klicken sie auf diesen <a href="'._WEB_PATH.'register/confirm/'.$data['salt'].'"><b>link!</b></a>';
        //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

        if(!$mail->send()) {
            //echo 'Message could not be sent.';
            //echo 'Mailer Error: ' . $mail->ErrorInfo;
        } else {
           // echo 'Message has been sent';
        }
    }
    
    private function generateSalt($max = 15, $confirm = false) {
        if(!$confirm)
           $characterList = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*?";
        else
             $characterList = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $i = 0;
        $salt = "";
        while ($i < $max) {
            $salt .= $characterList{mt_rand(0, (strlen($characterList) - 1))};
            $i++;
        }
        return $salt;
  }
}
