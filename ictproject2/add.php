<?php
$conn = mysqli_connect("localhost","root","","drug_verification");

$drug = $_POST['drug'];
$man = $_POST['man'];
$code = $_POST['code'];
$exp = $_POST['exp'];

$stmt = mysqli_prepare($conn, "INSERT INTO drugs (drug_name, manufacturer, unique_code, expiry_date) VALUES (?, ?, ?, ?)");
mysqli_stmt_bind_param($stmt, "ssss", $drug, $man, $code, $exp);

if(mysqli_stmt_execute($stmt)){
    echo "✅ Drug Added";
}else{
    echo "❌ Error (Code may exist)";
}
?>