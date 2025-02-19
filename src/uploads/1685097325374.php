<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <title>Police Welfare</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <link rel="shortcut icon" href="images/logos/logo.png" type="image/x-icon">
    <link rel="icon" href="images/logos/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/colorbox.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/captcha.css">
</head>
<style>
       .invalid{
  color:red;
}
</style>
<body>
    <section class="user-form-part">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="user-form-logo">
                        <a href="index.php">
                            <img src="images/logos/logo.png" alt="logo">
                        </a>
                    </div>
                    <div class="user-form-card">

                        <div class="user-form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <img src="images/register.jpg" class="img-fluid">
                                </div>
                                <div class="col-sm-6">
                                    <form id="login_form" name="login_form" action="/Dashboard">
                                    <div class="user-form-title">
                                        <h2>Admin Login</h2>
                                    </div>
                                    <!-- <form class="user-form"> -->
                                    <div class="form-group"><input type="text" class="form-control" placeholder="Enter your username" id="userName" name="username" required></div>
                                    <div class="form-group"><input type="password" class="form-control" placeholder="Enter your password" id="password" name="password" required>
                                                  <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
						            </div>
                                    <div>
                                        <label class="submit__control">
                                            <h5>Enter Captacha</h5>
                                            <div class="submit__generated">

                                            </div>
                                            <i class="fa fa-refresh"></i>
                                            <p class="submit__error hide">Incorrect value</p>
                                            <p class="submit__error--empty hide">Required field cannot be left blank</p>
                                        </label>
                                        <input class="submit overlay" type="submit" value="Submit" id="loginUser" />
                                        <div class="submit__overlay"></div>
                                          <p class="text-center"><a href="reset.php">Forget Password (or) User Name ?</p>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/captcha.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
//     <script>

//         $("#login_form").validate({
//   errorClass: "invalid",
//   messages: {
//     password: {
//       required: "Please enter your password",
//       minlength: jQuery.validator.format("At least {0} characters required!")
    
//     },
//     username: {
//       required: "Please enter your username",
//       minlength: jQuery.validator.format("At least {0} characters required!")
//     },
//   },
//   submitHandler: function(form) {
//     console.log(form, "formformform")
//   event.preventDefault();
//     var name = $("#name").val();
//                 var userName = $("#userName").val();
//                 var password = $("#password").val();
//                 let registerData = {
//                     userName: userName,
//                     password: password,
//                 }
                
//                 console.log(registerData, "registerDataregisterData")
//                 $.ajax({
//                     type: 'POST',
//                     url: 'https://nodebackend.kavalarnalantn.in:5000/son_Register/authenticate',
//                     data: registerData,
//                     success: function(data) {
//                         console.log(data, "datadata")
//                         localStorage.setItem("SonName", userName);
//                         localStorage.setItem("EmailId", data.emailId);
//                         window.location= "Dashboard/notificationList.php"
//                     },
//                     error : function(res){
//                         alert("Username or Password is incorrect  ")
//                     }
//                 });
//     }
// });
//     </script>
// </body>

// </html>