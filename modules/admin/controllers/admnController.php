<?php 
/**
 * Admin modul
 */
class admnController extends baseController{
    private $kategorijeModel, $podkategorijeModel, $slikeModel, $proizvodiModel;
      public function __construct() {
          Loader::loadModel($this, "kategorije", "admin");
          Loader::loadModel($this, "podkategorije", "admin");
          Loader::loadModel($this, "slike","admin");
          Loader::loadModel($this, "proizvodi","admin");
          
          $this->kategorijeModel = $this->models['kategorije'];
          $this->podkategorijeModel = $this->models['podkategorije'];
          $this->slikeModel = $this->models['slike'];
          $this->proizvodiModel = $this->models['proizvodi'];
          Loader::loadClass("SimpleImage");
      }
      
      /**
       * index strana u admin delu
       */
     public function index() {
        Loader::loadView("index", "admin");
     }
     
     public function login(){
         Loader::loadView("login", "login", true);
     }
     
    public function kontrolnaTabla(){
          Loader::loadView("index", "admin", true);
    }
     /**
      * ucitava unos proizvoda stranu u admin delu
      */
     public function unos_proizvoda(){
         $template['kategorije'] = $this->kategorijeModel->getAll('*',"WHERE kategorija_status=1");
         Loader::loadView("unosproizvoda","admin",true,$template);
     }
     
     /**
      * unosi proizvod u tabelu proizvodi
      */
     public function unesiProizvod(){
         //var_dump($_POST); exit;
         $id_slike = $this->filter_input($_POST['slika_id']);
         $this->proizvodiModel->proizvod_naziv = $this->filter_input($_POST['proizvod_naziv']);
         $this->proizvodiModel->proizvod_opis = $this->strAddslashes($_POST['proizvod_opis']);
         $this->proizvodiModel->kategorija_id = $this->filter_input($_POST['kategorija_id']);
         $this->proizvodiModel->podkategorija_id = $this->filter_input($_POST['podkategorija_id']);
         $this->proizvodiModel->proizvod_datum_vreme = date('Y-m-d h:m:i');
         $this->proizvodiModel->proizvod_status = $this->filter_input($_POST['proizvod_status']);
         $this->proizvodiModel->proizvod_kolicina = $this->filter_input($_POST['proizvod_kolicina']);
         $this->proizvodiModel->proizvod_cena = $this->filter_input($_POST['proizvod_cena']);
         if(is_int((int)$last_id = $this->proizvodiModel->insert())){
             $this->slikeModel->id = $id_slike;
             $this->slikeModel->proizvod_id = $last_id;
             if($this->slikeModel->update() == 1){
                $error = false;
                $message = "Uspesno ste ubacili proizvod.";
             }
         }else{
             $error = true;
             $message = "Doslo je do gresle prilikom ubacivanja novog proizvoda. Pokušajte ponovo.";
         }
         $data = array(
             "error"=>$error,
             "message"=>$message
         );
         $this->response($data);
         
    }
     
     /**
      * dobavlja podkategoriju na osnovu id kategorije
      * @return json vraca json podkategorija
      */
     public function dobaviPodkategoriju(){
         $id = $this->filter_input($_POST['kategorija_id']);
         $podkategorije = $this->podkategorijeModel->getAll('*', "WHERE kategorija_id={$id} and podkategorija_status=1");
         $error = false;
         $message = "Ok";
         if(empty($podkategorije)){
             $error = true;
             $message = "Ova kategorija nema podkategoriju";
         }
         $data = array(
             "error"=>$error,
             "data"=>$podkategorije,
             "message"=>$message
         );
         $this->response($data);
    }
    
    /**
     * uploaduje sliku za proizvod
     * @return json vara json objekat
     */
    public function unesiSliku(){
        //var_dump($_FILES);
        if(isset($_FILES)){
           $image_name = date("d_m_Y_h_m_i_s");
           $image_name = strtolower($image_name);
           //echo $image_name; exit;
           $img = new Image\SimpleImage();
           $img->load($_FILES['image']['tmp_name'])->thumbnail(280, 280)->save('views/images/'.$image_name.'_small.jpg');
           $img->load($_FILES['image']['tmp_name'])->thumbnail(400, 400)->save('views/images/'.$image_name.'.jpg');
           
           $this->slikeModel->slika_naziv = $image_name.'.jpg';
           $this->slikeModel->slika_naziv_mala = $image_name.'_small.jpg';
           
           if(is_int((int)$last_id = $this->slikeModel->insert())){
               $error = false;
               $message = "Uspesno ubacena slika";
           }else{
              $error = true;
              $message = "Doslo je do greske prilikom ubacivanja slike."; 
           }
           $data = array(
             "error"=>$error,
             "message"=>$message,
             "last_id"=>$last_id  
           );
           $this->response($data);
        }
    }
    
    /**
     * dobavlja samo jednu sliku za proizvod
     * @return json vraca json objekat slike
     */
    public function dobaviSliku(){
       //var_dump($_POST); exit;
         if((int)isset($_POST['id'])){
             $slika = $this->slikeModel->get($_POST['id']);
             if(!empty($slika)){
                 $error = false;
                 $message = "Uspesno dobavljena slika";
             }  else {
                $error = true;
                $message = "Doslo je do greske prilikom dobavljanja slike"; 
             }
             $data = array(
                 "error"=>$error,
                 "message"=>$message,
                 "data"=>$slika
             );
             $this->response($data);
         }
    }
    
    /**
     * update slike za proizvod
     * @return json 
     */
    public function promeniSliku(){
        if(isset($_FILES)){
           $image_name = date("d_m_Y_h_m_i_s");
           $image_name = strtolower($image_name);
           $img = new Image\SimpleImage();
           $img->load($_FILES['image']['tmp_name'])->thumbnail(280, 280)->save('views/images/'.$image_name.'_small.jpg');
           $img->load($_FILES['image']['tmp_name'])->thumbnail(400, 400)->save('views/images/'.$image_name.'.jpg');
           
           $this->slikeModel->id = (int)$_POST['image_id'];
           $this->slikeModel->slika_naziv = $image_name.'.jpg';
           $this->slikeModel->slika_naziv_mala = $image_name.'_small.jpg';
           //var_dump($this->slikeModel->update());
           if($this->slikeModel->update() == 1){
               $error = false;
               $message = "Uspesno promenjna slika";
           }else{
              $error = true;
              $message = "Doslo je do greske prilikom zamene slike."; 
           }
           $data = array(
             "error"=>$error,
             "message"=>$message  
           );
           $this->response($data);
        }
    }
    
    /**
     * otvara view administracija_proizvodaView
     */
    public function administracijaProizvoda(){
       $polja = "proizvodi.id, 
            slike.id as slika_id,
            proizvodi.proizvod_naziv,
            proizvodi.proizvod_opis,
            proizvod_kolicina, 
            proizvod_cena,
            kategorija_id,
            podkategorija_id,
            proizvod_datum_vreme,
            proizvod_status,
            kategorija_id";
         if(!empty($template['proizvodi'] = $this->proizvodiModel->getAll($polja,"inner join slike on proizvodi.id = slike.proizvod_id"))){
               Loader::loadView("administracija_proizvoda","admin",true,$template);
         }
    }
    
    /**
     * dobavlja pojedinacni porizvod po Id-u
     * @return json Json objekat proizvoda
     */
    public function dobaviProizvodPoId(){
        if(!empty($_POST['id'])){
        $id = $this->filter_input($_POST['id']);
        $kategorije = $this->kategorijeModel->getAll("*","WHERE kategorija_status='1'");
        $proizvod = $this->proizvodiModel->get((int)$id);
        $podkategorije = $this->podkategorijeModel->getAll("*", "WHERE kategorija_id={$proizvod->kategorija_id}");
        //var_dump($proizvod);
           if(is_object($proizvod)){
              $error = false;
              $message = "Uspešno dobavljen proizvod.";
           }
           if(!$proizvod){
             $error = true;
             $message = "Proizvod nije pronadjen u bazi.";  
           }
           $data = array(
               "error"=>$error,
               "message"=>$message,
               "data"=>$proizvod,
               "kategorije"=>$kategorije,
               "podkategorije"=>$podkategorije
           );
           $this->response($data);
        }
    }
    
    public function izmenaProizvoda(){
        if(!empty($_POST)){
            $this->proizvodiModel->id = $this->filter_input((int)$_POST['id']);
            $this->proizvodiModel->proizvod_naziv = $this->filter_input($_POST['proizvod_naziv']);
            $this->proizvodiModel->proizvod_opis = $this->strAddslashes($_POST['proizvod_opis']);
            $this->proizvodiModel->proizvod_kolicina = $this->filter_input($_POST['proizvod_kolicina']);
            $this->proizvodiModel->proizvod_cena = $this->filter_input($_POST['proizvod_cena']);
            $this->proizvodiModel->kategorija_id = $this->filter_input($_POST['kategorija']);
            $this->proizvodiModel->podkategorija_id = $this->filter_input($_POST['podkategorija']);
            $this->proizvodiModel->proizvod_status = $this->filter_input($_POST['proizvod_status']);
            if($this->proizvodiModel->update() == 1){
                $error = false;
                $message = "Uspešno ste izmenili proizvod";
            }else{
                $error = true;
                $message = "Došlo je do greške ili niste izmenili nista u vezi proizvoda";
            }
            $data = array(
                "error"=>$error,
                "message"=>$message
            );
            $this->response($data);
        }
    }
    
    /**
     * dobavlja sve proizvode 
     * vraca json objekat sa proizvodima
     */
    public function dobaviSveProizvode(){
        if(!empty($proizvodi = $this->proizvodiModel->getAll("*","inner join kategorije on kategorije.id = proizvodi.kategorija_id inner join slike on slike.proizvod_id = proizvodi.id"))){
            $error = false;
            $message = "Uspesno dobavlje proizvodi";
        }else{
            $error = true;
            $message = "Doslo je do greške prilikom dobavljanja proizvoda";
        }
        $data = array(
            "error"=>$error,
            "message"=>$message,
            "data"=>$proizvodi
        );
        $this->response($data);
    }
}