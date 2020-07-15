<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




<link href="Patient_Registration.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="Patient_Registration.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<div class="container">
            <form class="form-horizontal" action="AddPatient" role="form">
                <h2>Patient Registration</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"><b>First Name</b></label>
                    <div class="col-sm-9">
                        <input type="text" name="fname" id="firstName" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                    
                <div class="form-group"class="col-sm-3 control-label"><b>Last Name</b></label>
                    <div class="col-sm-9">
                        <input type="text" name="lname" id="lastName" placeholder="Last Name" class="form-control" autofocus>
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
                        <input type="phoneNumber" id="phoneNumber" placeholder="Phone number" class="form-control" name="mobile">
                      
                    </div>
                </div>
              
                <div class="form-group">
                    <label class="control-label col-sm-3"><b>Gender</b></label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                             
                                    <input type="radio" id="femaleRadio" value="Female" name="gender">Female
                              
                                    <input type="radio" id="maleRadio" value="Male" name="gender">Male
                                     
                                    <input type="radio" id="otherRadio" value="Other" name="gender">Other
                                </label>
                            </div>
                        </div>
                    </div><br>
                      <div class="form-group">
                        <label for="Blood" class="col-sm-3 control-label"><b>Blood Group* </b></label>
                    <div class="col-sm-9">
                        <Select name="Blood" >
                        <datalist id="Blood Group">
                      <option value="A+">A+</option>
                      <option value="B+">B+</option>
                      <option value="O+">O+</option>
                      <option value="AB+">AB+</option>
                      <option value="A-">A-</option>
                      <option value="B-">B-</option>
                      <option value="O-">O-</option>
                      
                      </datalist>
                      </Select>
                    </div>
               
                   
                    <div class="form-group">
                        <label for="state" class="col-sm-3 control-label"><b>State*</b> </label>
                    <div class="col-sm-9">
                        <input type="text" name="state" id="state" placeholder="Enter Your State" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="city" class="col-sm-3 control-label"><b>City*</b> </label>
                    <div class="col-sm-9">
                        <input type="text" name="city" id="city" placeholder="Enter Your City" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="pincode" class="col-sm-3 control-label"><b>Pincode*</b> </label>
                    <div class="col-sm-9">
                        <input type="number" name="pincode" id="pincode" placeholder="Enter Pincode" class="form-control">
                    </div>
                   
                </div>
                </div>
                </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
               
                  <div class="container" style="background-color:#f1f1f1">
                      <button type="button" class="submit">Register</button>
                   <span class="psw">Forgot <a href="#">password?</a></span>
                 </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        
        </body>
        </html>