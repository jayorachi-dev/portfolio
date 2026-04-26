<?php
$conn = mysqli_connect("localhost","root","","drug_verification");

$code = $_POST['code'];

$stmt = mysqli_prepare($conn, "SELECT * FROM drugs WHERE unique_code=?");
mysqli_stmt_bind_param($stmt, "s", $code);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

if(mysqli_num_rows($result) > 0){

    $row = mysqli_fetch_assoc($result);
    $today = date("Y-m-d");

    if($row['is_used'] == 1){
        $status = "⚠ Already Used (Possible Counterfeit)";
    } 
    else if($today > $row['expiry_date']){
        $status = "⚠ Expired Drug";
    } 
    else{
        $status = "✅ Authentic Drug";
    }

    mysqli_query($conn, "UPDATE drugs SET is_used=1 WHERE unique_code='$code'");

    echo json_encode([
        "status"=>$status,
        "name"=>$row['drug_name'],
        "manufacturer"=>$row['manufacturer'],
        "expiry"=>$row['expiry_date']
    ]);

} else {
    echo json_encode(["status"=>"❌ Invalid Code"]);
}
?>