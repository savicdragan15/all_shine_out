<?php
/**
 * @property int $ID primary key
 * @property string $product_name Name of product
 * @property string $product_description Description of product
 * @property string $product_price Price
 * @property int $product_quantity Quantity
 * @property int $product_category Category
 * @property int $product_subcategory Subcategory
 * @property int $product_sub_subcategory Sub sub category
 * @property int $product_status Product status
 */
class unitsproductsModel extends baseModel{
    public static $key = "ID";
    public static $table = "units_products";
    
    
   public function getProductsWithUnit($product_id){
       
       $this->join = array( 
            array("table"=>"products","relation"=>"products.ID = units_products.product_id"),
            array("table"=>"units_quantity","relation"=>"units_quantity.ID = units_products.unit_quantity_id"),
            array("table"=>"units","relation"=>"units.ID = units_quantity.unit_id")
        );
       
       $this->where = "units_products.product_id = '{$product_id}'";
       
       return $this->join();
   }
}