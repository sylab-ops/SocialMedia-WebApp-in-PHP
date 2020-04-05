<!doctype html>
<html lang="en">
<head>
    <title>Welcome to UpRising</title>

    <!--Javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/bootbox.min.js"></script>
    <script src="assets/js/demo.js"></script>
    <script src="assets/js/jquery.jcrop.js"></script>
    <script src="assets/js/jcrop_bits.js"></script>


    <!--CSS -->
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.jcrop.css">

</head>
<body>

<!-- Bootstrap Example single danger button -->
<div class="top_bar">
    <!-- Home page Menu setup with the Blue Icon/name of the website-->
    <div class="logo">
        <a href="index.php">SportZure</a>
        <!--            assets/images/icons/logo.jpg-->

    </div>


    <!-- Search box -->
    <div class="search">

        <form action="search.php" method="GET" name="search_form">
            <input type="text" onkeypress="getLiveSearchUsers(this.value, '<?php echo $userLoggedIn; ?>')" name="q" placeholder=" Search..." autocomplete="off" id="search_text_input">

            <div class="button_holder">
                <img src="assets/images/icons/magnifying_glass_icon.png">

            </div>

        </form>

</body>
</html>
