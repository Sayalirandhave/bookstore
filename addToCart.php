<?php
include '../connect.php';
// include '../components/ShoppingCart.php';
function UpdateCount()
{   include '../connect.php';
    if(isset($_COOKIE['userId']))
    {
        $userid = $_COOKIE['userId'];
        $sql ="SELECT COUNT(*) AS count FROM `cart` WHERE `user_id`=$userid";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_array($result);
        $count = $row['count'];
        echo '<a href="cart.php" data-count="'.$count.'" class="block w-fit cursor-default transition-all capitalize px-7 py-3 shadow rounded-md after:content-[attr(data-count)] after:block after:w-6 after:h-6 after:absolute after:text-center relative after:top-0 after:right-0 after:bg-red-500 after:text-white after:rounded-full "><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg></a>
        ';
    }
    else
    echo '<a href="cart.php"  class="block w-fit cursor-default transition-all capitalize px-7 py-3 shadow rounded-md"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg></a>
';

}
if(isset($_POST['id']))
{
    $userId = $_COOKIE['userId'];
    $bkid = $_POST['id'];
    // check if the book is already in cart or not
    $sql = "SELECT COUNT(*) AS count FROM `cart` WHERE `book_id`=$bkid AND user_id= $userId";
    $result1 = mysqli_query($conn,$sql);
    if($result1)
    {

        $row1 = mysqli_fetch_array($result1);
        // book is not exists
        $userCartCount = $row1['count'];
        //  echo $userCartCount;
        if($userCartCount<1)
        {
            
            $sql = "SELECT * FROM `books` WHERE id=$bkid";
            $result = mysqli_query($conn,$sql);
            $row = mysqli_fetch_assoc($result);
            $price = $row['price'];
    
            $userId = $_COOKIE['userId'];
            // add into cart 
            $sql = "INSERT INTO `cart` (`user_id`,`book_id`,`quantity`,`total_price`,`discount`) VALUES ($userId,$bkid,1,$price,0)";
            $result = mysqli_query($conn,$sql);
            if($result)
                echo UpdateCount();
                // echo ShoppingCart(); //it gives an error on buypage
                // echo " Added into cart";
            // else echo "query error";
      
         
        }
        // updating the existing book quantity
        else
        {
            $sql = "SELECT * FROM `books` WHERE id=$bkid";
            $result = mysqli_query($conn,$sql);
            $row = mysqli_fetch_assoc($result);
            $price = $row['price'];
            $sql = "SELECT * FROM `cart` WHERE `book_id`=$bkid";
            $result = mysqli_query($conn,$sql);
            if($result)
            {
                 
                $row = mysqli_fetch_assoc($result);
                $incQty = $row['quantity']+1;
                $incPrice = $row['total_price'] + $price;
                // echo $incQty;

                $sql = "UPDATE `cart` SET `quantity`=$incQty,`total_price`=$incPrice WHERE `book_id`=$bkid";
                $result = mysqli_query($conn,$sql);
                // echo ShoppingCart();
                echo UpdateCount();

            }
            else echo "update cart query error";
          
          }
    }
    else echo "cart query error";


    }else echo 'Access Denied'
?>