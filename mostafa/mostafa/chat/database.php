<?php

/**
 * Created by PhpStorm.
 * User: Mostafa tarek
 * Date: 1/29/2017
 * Time: 6:08 PM
 */
define("HOST","localhost",false);
define("DB","blacksale",false);
define("USER","root",false);
define("PASSWORD","12345",false);
class DataBase
{
    private $table;
    private $conn;

    function __construct($table)
    {
        $this->table=$table;
        $this->connect() ;


    }

    function  connect()
    {
        $this->conn=mysqli_connect(HOST,USER,PASSWORD,DB) or die("error in connecting");

    }
    function  insert($arrtable,$arrinsert)
    {
        try{
            if(is_array($arrtable)&&is_array($arrinsert))
            {

                $table=implode(",",$arrtable);
                $values=implode(",",$arrinsert);


                $sql="INSERT INTO {$this->table} ({$table}) VALUES  ({$values})";
                // echo $sql ."<Br>" ;
                mysqli_query($this->conn,$sql) ;


            }
            else
                throw new mysqli_sql_exception();

        }
        catch (mysqli_sql_exception $e)
        {
            echo "you have error in inseration arrays ";
        }

    }
    function update($arrtable,$arrinsert ,$slctcol,$slctvalues )
    {

        try{
            if(is_array($arrtable)&&is_array($arrinsert))
            {

                $counts=sizeof($arrtable);
                $newval=" ";
                for($i=0;$i<$counts;$i++)
                    if($i<$counts-1)

                        $newval .= $arrtable[$i] ."='" . $arrinsert[$i] ."' , " ;
                    else
                        $newval .= $arrtable[$i] ."='" . $arrinsert[$i] ."' " ;

                $counts=sizeof($slctcol);
                $where=" ";
                for($i=0;$i<$counts;$i++)

                    $where .= $slctcol[$i] ."='" . $slctvalues[$i] ."'and " ;




                $sql="UPDATE {$this->table} SET" . $newval ."where" . $where ."1" ;
                // echo $sql;
                mysqli_query($this->conn,$sql) ;


            }
            else
                throw new mysqli_sql_exception();

        }
        catch (mysqli_sql_exception $e)
        {
            echo "you have error in inseration arrays ";
        }


    }
    function delete($slctcol,$slctvalues )
    {
        $where=" ";
        $counts=sizeof($slctcol);
        for($i=0;$i<$counts;$i++)

            $where .= $slctcol[$i] ."='" . $slctvalues[$i] ."'and " ;




        $sql="Delete from {$this->table} WHERE ". $where ."1" ;

        // echo $sql;
        @mysqli_query($this->conn,$sql);

    }
    function read($slctcol,$slctvalues ,$extrasql)
    {
        $where=" ";
        $counts=sizeof($slctcol);


        for($i=0;$i<$counts;$i++) {

            $where .= $slctcol[$i] . "='" . $slctvalues[$i] . "'and ";


        }





        $sql="SELECT * from {$this->table} WHERE ". $where ."1" .$extrasql;
        // echo "this is selecting sql " . $sql ;
        $res=@mysqli_query($this->conn,$sql);
        return mysqli_fetch_all($res);



    }


    function close()
    {
        mysqli_close($this->conn);

    }

    /**
     * @param mixed $table
     */
    public function setTable($table)
    {
        $this->table = $table;
    }



    function __destruct()
    {
        $this->close($this->conn);
    }
}