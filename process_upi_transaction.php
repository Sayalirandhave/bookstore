<?php
include 'connect.php';

if(isset($_POST['pay-now']))
{
  if(isset($_COOKIE['userId']))
  {
    $userid= $_COOKIE['userId'];

    $sql = "SELECT * FROM cart WHERE user_id=$userid";
    $result = mysqli_query($conn,$sql);
    if($result)
    {
        if(mysqli_num_rows($result)<1)
        echo "No prodcuts are in cart please first add them";
        else
        {
            $cartIds="";
            $bookIds="";
            $quantities="";
            $sql1 = "SELECT SUM(total_price) as totalsum FROM cart WHERE user_id=$userid";
            $result1 = mysqli_query($conn,$sql1);
            $row = mysqli_fetch_assoc($result1);
            $totalProdcutsSum = $row['totalsum']+18;
            // if more than 1 results
            if(mysqli_num_rows($result)==1)
            {

            }
            else
            {
            while($row = mysqli_fetch_assoc($result))
                {
                    $cartIds.=$row['id'].",";
                    $bookIds.=$row['book_id'].",";
                    $quantities.=$row['quantity'].",";
                }
            }
            echo $cartIds;
            echo "<br>".$bookIds;
            echo "<br>".$quantities;
            // inserting query in orders
            // work remaining
            $sql = "INSERT INTO `orders`(`cart_id`, `quantity`, `customer_id`, `order_date`, `dest_address`, `status`, `payment`) VALUES ('$cartIds','$quantities','$userid',NOW(),NOW(),'processing','Sucess')"; 
        }
    }
  }
}
?>