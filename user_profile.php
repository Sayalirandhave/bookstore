<?php
include '../connect.php';
    include '../components/secondaryNav.php'; 
    include '../isLoggedIn.php';
    if(!isloggedIn())
    header('location:../index.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Store</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/feather-icons"></script>
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="shortcut icon" href="../assets/logo/logo.jpg" type="image/x-icon">
</head>
<body>
    <div class="bg-gray-100 pb-4">

    <?php secondaryNav("user profile","bell") ?>
      <!-- prfile -->

      <div class="sm:p-4 m-4">
        <?php
            $id = $_COOKIE['userId'];
            $sql = "SELECT * FROM `users` WHERE id =$id";
            $result = mysqli_query($conn,$sql);
            if($result)
            {
                $row = mysqli_fetch_assoc($result);
                $uName = $row['name']; 
                $profile = $row['profile_pic'];
                $email = $row['email'];
                echo '
                <div class="grid place-items-center my-4">
                    <img class="border-4 border-white object-cover rounded-full w-20 h-20" src="../'.$profile.'" alt="">
                    <h2 class="name text-xl sm:text-2xl capitalize font-semibold">'.$uName.'</h2>
                    <p class="username text-gray-500">@Shubh_9696</p>
            </div>
                    ';
            }
        ?>

        <!-- user info -->
        <div class="xl:grid grid-cols-2 gap-4">

        <div class="bg-white p-4 rounded-lg my-4">
            <h3 class="text-lg font-semibold capitalize">about</h3>
            <?php
                echo '
                <div class="md:grid grid-cols-2 gap-4">
                <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                    <label for="fullName" class="text-gray-500 capitalize font-medium  whitespace-nowrap">full name:</label>
                    <input id="fullName" class="capitalize py-3 outline-none w-full font-semibold" value="'.$uName.'"/>
                </div>
                <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                    <label for="userName" class="text-gray-500 capitalize font-medium  whitespace-nowrap">username:</label>
                    <input id="userName" class="capitalize py-3 outline-none w-full font-semibold" value="@omkar_kumbhar22"/>
                </div>
                <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                    <label for="email" class="text-gray-500 capitalize font-medium  whitespace-nowrap">email:</label>
                    <input id="email" class="py-3 outline-none w-full font-semibold" value="'.$email.'" readonly/>
                </div>
                </div>
                ';
            ?>
          
            <div class="md:flex items-center gap-4 justify-center">
            <!-- if any changes occur in email,user,name then remove cursor-not-allowed use localstorage for detect this or check direclty in db if possible -->
            <div class="flex items-center gap-4 mt-4 py-3 border border-black text-black bg-gray-200 hover:bg-black hover:text-white rounded-lg px-2 cursor-not-allowed transition">
                <i data-feather="save"></i>
                <p class="font-semibold capitalize">save</p>
                <i class="text-transparent" data-feather="arrow-right"></i>
            </div>
            </div>
        </div>
<!--  -->
        <div class="bg-white p-4 rounded-lg my-4">
            <h3 class="text-lg font-semibold capitalize">credit card</h3>

            <div class="md:grid grid-cols-2 gap-4">
            <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                <label for="fullName" class="text-gray-500 capitalize font-medium  whitespace-nowrap">address:</label>
                <input id="fullName" class="capitalize py-3 outline-none w-full font-semibold" value="omkar kumbhar"/>
            </div>
            <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                <label for="userName" class="text-gray-500 capitalize font-medium  whitespace-nowrap">VPA ID:</label>
                <input id="userName" class="capitalize py-3 outline-none w-full font-semibold" value="@omkar_kumbhar22"/>
            </div>
            <div class="flex items-center gap-1 mt-4 border rounded-lg px-1">
                <label for="email" class="text-gray-500 capitalize font-medium  whitespace-nowrap">Card number:</label>
                <input id="email" class="py-3 outline-none w-full font-semibold" value="omkarkumbhar22@gmail.com"/>
            </div>
            </div>
            <div class="md:flex items-center gap-4 justify-center">
            <!-- if any changes occur in email,user,name then remove cursor-not-allowed use localstorage for detect this or check direclty in db if possible -->
            <div class="flex items-center gap-4 mt-4 py-3 border border-black text-black bg-gray-200 hover:bg-black hover:text-white rounded-lg px-2 cursor-not-allowed transition">
                <i data-feather="save"></i>
                <p class="font-semibold capitalize">save</p>
                <i class="text-transparent" data-feather="arrow-right"></i>
            </div>
            </div>
        </div>
</div>
<!-- user info  end -->
        <!-- change password and delete account -->
        <div class="sm:flex items-center justify-center gap-4">

            <div class="flex items-center justify-between mt-4 py-3 border border-green-500 text-green-500 hover:bg-green-500 hover:text-white rounded-lg px-2 cursor-default sm:cursor-pointer transition">
                <i data-feather="lock"></i>
                <p class="font-semibold capitalize">change password</p>
                <i data-feather="arrow-right"></i>
            </div>
            <div class="flex items-center gap-4 mt-4 py-3 border border-red-500 rounded-lg px-2 text-red-500 hover:bg-red-500 hover:text-white cursor-default sm:cursor-pointer transition">
                <i data-feather="trash"></i>
                <p class="font-semibold capitalize">delete account</p>
                <p></p>
            </div>
        </div>


      </div>
    </div>
</body>
<script>
    feather.replace();
  </script>
<script src="scripts/goBack.js"></script>

</html>