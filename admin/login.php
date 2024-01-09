<?php session_start(); include_once 'include/class.user.php'; $user=new User(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>หน้าต่างAdmin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css" type="text/css">

    <script language="javascript" type="text/javascript">
        function submitlogin() {
            var form = document.login;
            if (form.emailusername.value == "") {
                alert("ใส่ ชื่อผู้ใช้ หรือ Email.");
                return false;
            } else if (form.password.value == ) {
                alert("ใส่รหัสผ่าน.");
                return false;
            }
        }
    </script>
</head>

<body>
    <div class="container">
        <div class="jumbotron">
            <h2>Log In</h2>
            
            <hr>
            <form action="" method="post" name="login">
                <div class="form-group">
                    <label for="emailusername">ชื่อผู้ใช้ หรือ Email:</label>
                    <input type="text" name="emailusername" class="form-control" >
                </div>
                <div class="form-group">
                    <label for="password">รหัสผ่าน:</label>
                    <input type="password" name="password" class="form-control" >
                </div>
                <!--For showing error for wrong input  -->
                <p id="wrong_id" style=" color:red; font-size:12px; "></p>


                <button type="submit" name="submit" value="Login" onclick="retrun(submitlogin());" class="btn btn-lg btn-primary btn-block">Submit</button>
                
                <br>
                <p style="text-align: center; font-size: 14px;"><a href="../index.php">กลับสู่หน้าหลัก</a></p>
                
                

                <?php if(isset($_REQUEST[ 'submit'])) { extract($_REQUEST); $login=$user->check_login($emailusername, $password); 
                    if($login) { echo "<script>location='../admin.php'</script>"; } 
                else{?>

                <script type="text/javascript">
                    document.getElementById("wrong_id").innerHTML = "ชื่อผู้ใช้หรือรหัสผ่านผิด";
                </script>

                <?php } }?>

            </form>
        </div>
    </div>

</body>

</html>