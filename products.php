<?php 
include 'src/database.php';

//get the products data from database
$query = "
SELECT
id,
name,
category,
description,
price,
image
FROM products
";
$statement = $connection -> prepare($query);
$statement -> execute();
$result = $statement -> get_result();
$products = array();
while( $row = $result -> fetch_assoc()) {
    array_push( $products, $row );
}
?>
<!DOCTYPE html>
<html>
<?php
// include head section
include "components/head.php";
?>

<body>
    <?php include "components/header.php"; ?>
    <main>
        <section class="products">
            <?php 
            // output products
            foreach( $products as $p) {
                $image = $p["image"];
                $name = $p["name"];
                $description = $p["description"];
                $price = $p["price"];
                echo "
                    <div class='card'>
                        <img class='card-image' src='/$image'>
                        <div class ='card=content'>
                            <h4>$name</h4>
                            <h5>$price</h5>
                            <p>$description</p>
                        </div>
                    </div>
                ";
            }
            ?>
        
        </section>
    </main>
    <?php include "components/footer.php"; ?>
</body>

</html>