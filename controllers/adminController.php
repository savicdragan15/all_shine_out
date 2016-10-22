<?php

/**
 * @property object $_adminMod Admin module
 */
class adminController extends baseController{
       
    public function __construct(){
        $this->_callMod("admin");
    }
    
    public function index(){
       $this->_adminMod->index();
    }
    
    public function insertProducts(){
        $this->_adminMod->insertProducts();
    }
    
    public function getSubcategories(){
        $this->_adminMod->getSubcategories();
    }
    
    public function getSubSubCategories(){
        $this->_adminMod->getSubSubCategories();
    }
    
    public function login(){
        $this->_adminMod->login();
    }
    
    public function uploadImage(){
        $this->_adminMod->uploadImage();
    }
    
    public function getImage(){
        $this->_adminMod->getImage();
    }
    
    public function productsAdministration(){
        $this->_adminMod->productsAdministration();
    }
    
    public function getProducts($page){
        $this->_adminMod->getProducts($page);
    }
    
    public function getImageByProductID() {
        $this->_adminMod->getImageByProductID();
    }
    
    public function updateImage() {
        $this->_adminMod->updateImage();
    }
    public function adminCategories() {
        $this->_adminMod->adminCategories();
    }
    public function insertCategory()
    {
        $this->_adminMod->insertCategory();
    }
}
