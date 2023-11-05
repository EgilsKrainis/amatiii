<?php

    include 'components/connect.php';

    // $success_msg[] = 'tas strada!';

    if(isset($_POST['add_product'])) {

        $id = create_unique_id();
        $name = $_POST['name'];
        $name = filter_var($name, FILTER_SANITIZE_STRING);
        $price = $_POST['price'];
        $price = filter_var($price, FILTER_SANITIZE_STRING);
        $stock = $_POST['stock'];
        $stock = filter_var($stock, FILTER_SANITIZE_STRING);

        $image = $_POST['image']['name'];
        $image = filter_var($image, FILTER_SANITIZE_STRING);
        $ext = pathinfo($image, PATHINFO_EXTENSION);
        $rename = create_unique_id().'.'.$ext;
        $image_size = $_FILES['image']['size'];
        $image_tmp_name = $_FILES['image']['tmp_name'];
        $iamge_folder = 'uploaded_files/'.$rename;

        if($image_size > 2000) {
            $warning_msg[] = 'Bildes izmers ir par lielu';
        }else{
            $insert_product = $conn->prepare("INSERT INTO 'products'(id, name, 
            price, stock, image) VALUES(?,?,?,?,?)");
            $insert_product->execute([$id, $name, $price, $stock, $rename]);
            move_uploaded_file($image_tmp_name, $image_folder);
            $success_msg[] = 'Produkts pievienots!';
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
    <script src="produktapiev.js"></script>
    <?php include 'components/alers.php'; ?>
    <?php include 'components/header.php';?>

    <section class="add-product">
        <h1 class="headeing">Pievienot produktu</h1>

        <form action="" method="post" enctype="multipart/form-data">
            <h3>Produkta apraksts</h3>
            <p>Nosaukums <span>*</span></p>
            <input type="text" name="name" required maxlength="50"
            placeholder="enter product name" class="input">
            <p>Cena <span>*</span></p>
            <input type="number" name="price" required maxlength="10"
            placeholder="enter product price" min="0" max="99999" class="input">
            <p>Kopējais krājums <span>*</span></p>
            <input type="number" name="stock" required maxlength="10"
            placeholder="total product available" min="0" max="99999" class="input">
            <p>Produkta bilde <span>*</span></p>
            <input type="file" required name="image" accept="image/*" class="input">
            <input type="submit" value="add product" name="add_product" class="btn">
        </form>
    </section>
</body>
</html>



<!-- 24 MIN VIDEO -->