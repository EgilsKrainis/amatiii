<?php

    include 'components/connect.php';

    // $success_msg[] = 'tas strada!';

    if(isset($_POST['add_to_cart'])){
        $id = create_unique_id();
        $product_id = $_POST['product_id'];
        $product_id = filter_var($product_id, FILTER_SANITIZE_STRING);
        $qty = $_POST['qty'];
        $qty = filter_var($qty, FILTER_SANITIZE_STRING);

        $verify_cart = $conn->prepare("SELECT * FROM 'cart' WHERE user_id = ? AND
        product_id = ?");
        $verify_cart->execute([$user_id, $product_id]);

        $max_cart_limit = $conn->prepare("SELECT * FROM 'cart' WHERE user_id = ?");
        $max_cart_limit->execute([$user_id]);

        if($verify_cart->rowCount() > 0){
            $warning_msg[] = 'Jau pievienots grozam!';
        }elseif($max_cart_limit->rowCount() ==10){
            $warning_msg[] = 'Grozs ir pilns!';
        }else{

            $select_p = $conn->prepare("SELECT * FROM 'products' WHERE id = ?");
            $select_p->execute([$product_id]);
            $fetch_p = $select_p->fetch(PDO::FETCH_ASSOC);

            $total_stock = ($fetch_p['stock'] - $qty);

            if($qty > $fetch_p['stock']){
                $warning_msg[] = 'Tikai '.$fetch_p['stock'].' krajuma ir palicis';
            }else{
                $insert_cart = $conn->prepare("INSERT INTO 'cart'(id, user_id,
                product_id, qty) VALUE(?,?,?,?)");
                $insert_cart->execute([$id, $user_id, $product_id, $qty]);

                $update_stock = $conn->prepare("UPDATE 'products' SET stock = ?
                WHERE id = ?");
                $update_stock->execute([$total_stock, $product_id]);
                $success_msg[] = 'Pievienots grozam!';
            }
        }
    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pievienot produktu</title>

    <!-- fonti cdnjs links -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"> -->
    <link rel="stylesheet" href="amatiii.css">
</head>
<body>
    <!-- sweetalert cdn links -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <!-- js faila links -->
    
    <?php include 'components/header.php';?>

    <section class="view-products">

        <h1 class="heading">Visi produkti</h1>

        <div class="box-containe">
            <?php
                $select_products = $conn->prepare("SELECT * FROM 'PRODUCTS'");
                $select_products->execute();
                if($select_products->rowCount() > 0){
                    while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
            ?>
            <form action="" method="post" class="box <?php if($fetch_product['stock']
            == 0){echo 'disabled';}; ?>">
                <input type="hidden" name="product_id" value="<?= $fetch_product
                ['id']; ?>">
                <img src="uploaded_files/<?= $fetch_product['image']; ?>" alt=""
                class="image">
                <?php if($fetch_product['stock'] > 9){ ?>
                    <span class="stock" style="color: green;"><i class="fas fa-check"></i> Noliktava</span>
                <?php }elseif($fetch_product['stock'] == 0){ ?>
                    <span class="stock" style="color: red;"><i class="fas fa-times"></i> Nav noliktva</span>
                <?php }else{ ?>
                    <span class="stock" style="color: red;">Pasteidzies, tikai<?= $fetch_product['stock']; ?
                    >left</span>
                <?php } ?>
                <h3 class="name"><?= $fetch_product['name']; ?></h3>
                <div class="flex">
                    <p class="price"><i class="fas fa-indian-rupee-sign"></i> <?=
                    $fetch_product['price']; ?></p>
                    <input type="number" name="qty" value="1" min="1" max="99"
                    maxlength="2" required class="qty">
                </div>
                <?php if($fetch_product['stock'] != 0){ ?>
                    <a href="#" class="btn">Pirkt tagad</a>
                    <input type="submit" value="Pievienot grozam" name="add_to_cart"
                    class="option-btn">
                <?php }; ?>
            </form>
            <?php
                    }
                }else{
                    echo'<p class="empty">Vēl nav pievienots neviens produkts!</p>';
                }
            ?>
        </div>

    </section>


<!-- 24 MIN VIDEO -->