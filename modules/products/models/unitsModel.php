<?php
/**
 * @property int $ID primary key
 * @property string $unit_name 
 */
class unitsModel extends baseModel{
    public static $key = "ID";
    public static $table = "units";
    
    
   public function getUnit($unit_id){
      return $this->get($unit_id);
   }
}