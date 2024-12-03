<<<<<<< HEAD

<?php
class ConnectModel{
    public $servername = "localhost";
    public $username = "root";
    public $password = "";
    public $port = "3306"; 
    public $conn;
    
    public function ketnoi(){
        try{
            $this->conn = new PDO("mysql:host=".$this->servername.";port=".$this->port.";dbname=duan1;charset=utf8",$this->username,$this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->conn;
        } catch(PDOException $e) {
=======
<?php
class ConnectModel
{
    public $servername = "localhost";
    public $username = "root";
    public $password = "";
    public $port = "3366";
    public $conn;

    public function ketnoi()
    {
        try {
            $this->conn = new PDO("mysql:host=" . $this->servername . ";port=" . $this->port . ";dbname=duan1;charset=utf8", $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->conn;
        } catch (PDOException $e) {
>>>>>>> e174863 (post)
            echo "Connection failed: " . $e->getMessage();
        }
    }

<<<<<<< HEAD
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

    public function selectall1($sql, $params = []) {
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql);

        // Gắn các tham số vào câu truy vấn nếu có
=======
    public function selectall($sql, $params = [])
    {
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql);
        $stmt->execute($params);
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->conn = null;
        return $kq;
    }

    public function selectone($sql, $id)
    {
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(":id", $id);
        $stmt->execute();
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->conn = null;
        return $kq;
    }
    public function selectoneSingle($sql, $params)
    {
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql);
        $stmt->execute($params);
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->conn = null;

        if (!empty($kq)) {
            return $kq[0];
        }
        return null;
    }
    public function selectall1($sql, $params = [])
    {
        $this->ketnoi();
        $stmt = $this->conn->prepare($sql);
>>>>>>> e174863 (post)
        foreach ($params as $key => $value) {
            $stmt->bindParam($key, $value);
        }
        $stmt->execute();
<<<<<<< HEAD
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC); 
        return $kq;
    }
   
    
}

?>
=======
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $kq;
    }
}
>>>>>>> e174863 (post)
