<?php
include_once 'include/class.user.php'; 
$user=new User(); 
 

if(isset($_REQUEST[ 'submit'])) 
{ 
    extract($_REQUEST); 
    $result=$user->add_room($roomname, $room_qnty, $no_bed, $bedtype,$facility,$price);
    if($result)
    {
        echo "<script type='text/javascript'>
              alert('เพิ่มห้องพักสำเร็จ');
         </script>";
    }
    else
    {
         echo $result;
    }
   
} 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/reg.css" type="text/css">
    
</head>

<body>
    <div class="container">
        <div class="well">
            <h2>เพิ่มห้องพัก</h2>
            <hr>
            <form action="" method="post" name="room_category">
                <div class="form-group">
                    <label for="roomname">ห้องพักชื่อ:</label>
                    <input type="text" class="form-control" name="roomname" placeholder="super delux" required>
                </div>
                 <div class="form-group">
                    <label for="qty">จำนวนห้องพัก:</label>&nbsp;
                    <select name="room_qnty">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                       <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="bed">จำนวนเตียง:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="no_bed">
                      <option value="1">1</option>
                      <option value="2">2</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="bedtype">ชนิดของเตียง:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <select name="bedtype">
                      <option value="single">เดียว</option>
                      <option value="double">คู่</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Facility">สิ่งอำนวยความสะดวก</label>
                    <textarea class="form-control" rows="5" name="facility"></textarea>
                </div>
               <div class="form-group">
                    <label for="price">ราคาต่อคืน:</label>
                    <input type="text" class="form-control" name="price" required>
                </div>
                <button type="submit" class="btn btn-lg btn-primary button" name="submit" value="Add Room">เพิ่มห้องพัก</button>

               <br>
                <div id="click_here">
                    <a href="../admin.php">กลับไปสู่หน้าAdmin</a>
                </div>


            </form>
        </div>
    </div>

</body>

</html>