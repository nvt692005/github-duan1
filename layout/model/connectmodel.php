
<?php
class ConnectModel{
    public $servername = "localhost";
    public $username = "root";
    public $password = "";
    public $port = "3366"; 
    public $conn;
    
    public function ketnoi(){
        try{
            $this->conn = new PDO("mysql:host=".$this->servername.";port=".$this->port.";dbname=asm2;charset=utf8",$this->username,$this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->conn;
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    public function selectall($sql){
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql); 
        $stmt->execute();
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC); 
        $this->conn = null; 
        return $kq; 
    }
    public function selectone($sql,$id){
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql); 
        $stmt->bindParam(":id",$id);
        $stmt->execute();
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC); 
        $this->conn = null; 
        return $kq; 
    }
}

?>