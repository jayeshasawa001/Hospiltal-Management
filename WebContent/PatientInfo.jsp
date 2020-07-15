<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="PatientInfo.css" rel="stylesheet" id="bootstrap-css">

</head>
<body>

<div class='absolute'>
    <label for="pid"><h1><b><i>  Enter Patient's Id</i></b></h1></label><br>
<input type="text" id="p_id"  class="form-control" autofocus><br>

<input type ="submit" onclick="document.getElementById('id01').style.display='block'" style="width:auto value="Show Record">
</div>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
  
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     
    </div>

    <div class="container">
     <h1>Patient's Information</h1>
    </div>

    
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
    