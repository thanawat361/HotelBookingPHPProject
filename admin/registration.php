<?php
include_once 'include/class.user.php'; 
$user=new User(); 
if(isset($_REQUEST[ 'submit'])) 
{ 
    extract($_REQUEST); 
    $register=$user->reg_user($fullname, $uname, $upass, $uemail); 
    if($register) 
    { 
        echo "
<script type='text/javascript'>
    alert('Your Manager has been Added Successfully');
</script>"; 
        echo "
<script type='text/javascript'>
    window.location.href = '../admin.php';
</script>"; 
    } 
    else 
    {
        echo "
<script type='text/javascript'>
    alert('Registration failed! username or email already exists');
</script>";
    }
} 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>หน้าต่างAdmin</title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/reg.css" type="text/css">
    <script language="javascript" type="text/javascript">
        function submitreg() {
            var form = document.reg;
            if (form.name.value == "") {
                alert("ใส้ ชื่อและนามสกุล.");
                return false;
            } else if (form.uname.value == "") {
                alert("ใส่ ชื่อผู้ใช้.");
                return false;
            } else if (form.upass.value == "") {
                alert("ใส่ รหัสผ่าน.");
                return false;
            } else if (form.uemail.value == "") {
                alert("ใส่ Email.");
                return false;
            }
        }
    </script>
</head>

<body>
    <div class="container">
        <div class="well">
            <h2>เพิ่มข้อมูลพนักงาน</h2>
            <hr>
            <form action="" method="post" name="reg">
                <div class="form-group">
                    <label for="fullname">ชื่อและนามสกุล:</label>
                    <input type="text" class="form-control" name="fullname" placeholder="ตัวอย่าง: เราไม่หล่อ เราไม่เท่" required>
                </div>
                <div class="form-group">
                    <label for="uname">ชื่อผู้ใช้:</label>
                    <input type="text" class="form-control" name="uname" placeholder="ตัวอย่าง: coolman" required>
                </div>
                <div class="form-group">
                    <label for="uemail">Email:</label>
                    <input type="email" class="form-control" name="uemail" placeholder="ตัวอย่าง: coolman@gmail.com" required>
                </div>
                <div class="form-group">
                    <label for="upass">รหัสผ่าน</label>
                    <input type="text" class="form-control" name="upass" placeholder="cool112" required>
                </div>
                <button type="submit" class="btn btn-lg btn-primary button" name="submit" value="Add Manager" onclick="return(submitreg());">Submit</button>

               <br>
                <div id="click_here">
                    <a href="../admin.php">กลับไปสู่หน้าAdmin</a>
                </div>


            </form>
        </div>
    </div>

</body>

</html>