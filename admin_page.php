<?php
@include 'config.php';

session_start();

if(!isset($_SESSION['user_name'])){
   header('location:login_form.php');
}

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_qty = $_POST['product_qty'];
    $product_image = $_POST['product_image']; // Assuming you are storing image paths

    $sql = "INSERT INTO product (product_name, product_price, product_qty, product_image) VALUES ('$product_name', '$product_price', '$product_qty', '$product_image')";

    if ($conn->query($sql) === TRUE) {
        echo "Product added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admin Page</title>
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />
   <link rel="stylesheet" href="style.css">
</head>
<body>
   <div class="container">
       <h1 class="mt-5">Admin Panel</h1>
       <form method="post" action="">
           <div class="form-group">
               <label for="product_name">Product Name</label>
               <input type="text" class="form-control" id="product_name" name="product_name" required>
           </div>
           <div class="form-group">
               <label for="product_price">Product Price</label>
               <input type="number" step="0.01" class="form-control" id="product_price" name="product_price" required>
           </div>
           <div class="form-group">
               <label for="product_qty">Product Quantity</label>
               <input type="number" class="form-control" id="product_qty" name="product_qty" required>
           </div>
           <div class="form-group">
               <label for="product_image">Product Image URL</label>
               <input type="text" class="form-control" id="product_image" name="product_image" required>
           </div>
           <button type="submit" class="btn btn-primary">Add Product</button>
       </form>
   </div>

   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>
</body>
</html>