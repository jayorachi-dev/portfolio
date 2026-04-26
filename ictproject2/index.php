<!DOCTYPE html>
<html>
<head>
<title>Drug Verification System</title>

<style>
body{
font-family: Arial;
background:#eef2f3;
text-align:center;
}

.container{
background:white;
padding:30px;
width:420px;
margin:auto;
margin-top:50px;
box-shadow:0 0 10px rgba(0,0,0,0.2);
border-radius:10px;
}

input{
padding:10px;
width:80%;
margin:10px;
}

button{
padding:10px 20px;
background:#28a745;
color:white;
border:none;
cursor:pointer;
border-radius:5px;
}

#result{
margin-top:20px;
}

.admin{
margin-top:40px;
display:none;
}
</style>

</head>
<body>

<div class="container">

<h2>💊 Drug Authenticity Checker</h2>

<input type="text" id="code" placeholder="Enter Drug Code">

<br>

<button onclick="verifyDrug()">Verify</button>

<div id="result"></div>

<hr>

<button onclick="toggleAdmin()">Admin Panel</button>

<div class="admin" id="admin">

<h3>Add Drug</h3>

<input type="text" id="drug" placeholder="Drug Name">
<input type="text" id="man" placeholder="Manufacturer">
<input type="text" id="ucode" placeholder="Unique Code">
<input type="date" id="exp">

<button onclick="addDrug()">Add</button>

<div id="adminMsg"></div>

</div>

</div>

<script>

function verifyDrug(){

let code = document.getElementById("code").value;

fetch("verify.php",{
method:"POST",
headers:{
"Content-Type":"application/x-www-form-urlencoded"
},
body:"code="+code
})
.then(res=>res.json())
.then(data=>{

let output = `<h3>${data.status}</h3>`;

if(data.name){
output += `
<p><b>Drug:</b> ${data.name}</p>
<p><b>Manufacturer:</b> ${data.manufacturer}</p>
<p><b>Expiry:</b> ${data.expiry}</p>
`;
}

document.getElementById("result").innerHTML = output;

});

}

// Toggle admin
function toggleAdmin(){
let panel = document.getElementById("admin");
panel.style.display = panel.style.display === "none" ? "block" : "none";
}

// Add drug
function addDrug(){

let drug = document.getElementById("drug").value;
let man = document.getElementById("man").value;
let code = document.getElementById("ucode").value;
let exp = document.getElementById("exp").value;

fetch("add.php",{
method:"POST",
headers:{
"Content-Type":"application/x-www-form-urlencoded"
},
body:`drug=${drug}&man=${man}&code=${code}&exp=${exp}`
})
.then(res=>res.text())
.then(data=>{
document.getElementById("adminMsg").innerHTML = data;
});

}

</script>

</body>
</html>