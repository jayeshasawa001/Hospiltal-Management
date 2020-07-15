<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Dashboard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="bootstrap/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="bootstrap/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="bootstrap/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="bootstrap/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="bootstrap/img/favicon.png?3">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        
   <script>
   
   #customers {
	   font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	   border-collapse: collapse;
	   width: 100%;
	 }

	 #customers td, #customers th {
	   border: 1px solid #ddd;
	   padding: 8px;
	 }

	 #customers tr:nth-child(even){background-color: #f2f2f2;}

	 #customers tr:hover {background-color: #ddd;}

	 #customers th {
	   padding-top: 12px;
	   padding-bottom: 12px;
	   text-align: left;
	   background-color: #4CAF50;
	   color: white;
	 }
   
   </script> 
  </head>
  <body>
    
      
                    <table id="customers">
					  <tr>
					    <th>Company</th>
					    <th>Contact</th>
					    <th>Country</th>
					  </tr>
					  <tr>
					    <td>Alfreds Futterkiste</td>
					    <td>Maria Anders</td>
					    <td>Germany</td>
					  </tr>
					  <tr>
					    <td>Berglunds snabbköp</td>
					    <td>Christina Berglund</td>
					    <td>Sweden</td>
					  </tr>
					  <tr>
					    <td>Centro comercial Moctezuma</td>
					    <td>Francisco Chang</td>
					    <td>Mexico</td>
					  </tr>
					  <tr>
					    <td>Ernst Handel</td>
					    <td>Roland Mendel</td>
					    <td>Austria</td>
					  </tr>
					  <tr>
					    <td>Island Trading</td>
					    <td>Helen Bennett</td>
					    <td>UK</td>
					  </tr>
					  <tr>
					    <td>Königlich Essen</td>
					    <td>Philip Cramer</td>
					    <td>Germany</td>
					  </tr>
					  <tr>
					    <td>Laughing Bacchus Winecellars</td>
					    <td>Yoshi Tannamuri</td>
					    <td>Canada</td>
					  </tr>
					  <tr>
					    <td>Magazzini Alimentari Riuniti</td>
					    <td>Giovanni Rovelli</td>
					    <td>Italy</td>
					  </tr>
					  <tr>
					    <td>North/South</td>
					    <td>Simon Crowther</td>
					    <td>UK</td>
					  </tr>
					  <tr>
					    <td>Paris spécialités</td>
					    <td>Marie Bertrand</td>
					    <td>France</td>
					  </tr>
			</table>
                   <form action="RedirectTo" method="post"> <input type="submit" value="View Records" class="btn btn-primary shadow px-5">&nbsp; &nbsp; <input type="submit" value="Add Record" class="btn btn-primary shadow px-5"><br/><br/> <input type="submit" value="Delete Record" class="btn btn-primary shadow px-5">&nbsp; &nbsp; <input type="submit" value="Modify Record" class="btn btn-primary shadow px-5"></form> 
                  
    
  </body>
</html>