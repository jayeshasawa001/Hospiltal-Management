<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="ISO-8859-1">




<link href="DoctorRegistration.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="DoctorRegistration.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Insert title here</title>
</head>
<body>

	<div class="container">
            <form class="form-horizontal" action="AddDoctor" role="form" method="post">
                <h2> Employee Registration</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><b>First Name</b></label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" name="fname" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                    
                <div class="form-group"class="col-sm-3 control-label"><b>Last Name</b></label>
                    <div class="col-sm-9">
                        <input type="text" id="lastName" name="lname" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label"><b>Email*</b> </label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control" name= "email">
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label"><b>Date of Birth*</b></label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control" name="dob">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label"><b>Phone number</b> </label>
                    <div class="col-sm-9">
                        <input type="phoneNumber" id="phoneNumber" name="mobile" placeholder="Phone number" class="form-control">
                      
                    </div>
                </div>
               
                <div class="form-group">
                    <label class="control-label col-sm-3"><b>Gender</b></label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                    <input type="radio" id="maleRadio" value="Male" name="gender">Male
                                    <input type="radio" id="femaleRadio" value="Female" name="gender">Female
                              
                              
                                     
                                    <input type="radio" id="otherRadio" value="Other" name="gender">Other
                                </label>
                            </div>
                        </div>
                    </div><br>
                      <div class="form-group">
                        <label for="Speciality" class="col-sm-3 control-label"><b>Speciality* </b></label>
                    <div class="col-sm-9">
                        <Select name="Speciality" >
                        <datalist id="Speciality">
                      <option value="Anesthesia">Anesthesia</option>
                      <option value="Breast Surgery">Breast Surgery</option>
                      <option value="Cardiology">Cardiology</option>
                      <option value="Clinical Psychology">Clinical Psychology</option>
                      <option value="Denistry">Denistry</option>
                      <option value="ENT">ENT</option>
                      <option value="Neurology">Neurology</option>
                      <option value="Orthopedic">Orthopedic</option>
                      </datalist>
                      </Select>
                    </div>
                     
                     <br/>
                     
                <div class="form-group">
                        <label for="EmployeeType" class="col-sm-3 control-label"><b>Employee Type* </b></label>
                    <div class="col-sm-9">
                        <Select name="Employee" >
                        <datalist id="Employee Type">
                      <option value="Doctor">Doctor</option>
                      <option value="Nurse">Nurse</option>
                     
                      </datalist>
                      </Select>
                    </div>
                
               
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
               
                 <div class="container" style="background-color:#f1f1f1">
                      <button type="submit" class="submit">Register</button>
                   <span class="psw">Forgot <a href="#">password?</a></span>
                 </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        
        
        

</body>
</html>