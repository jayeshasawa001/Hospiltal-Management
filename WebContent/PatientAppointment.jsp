<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="PatientAppointment.css" rel="stylesheet" id="bootstrap-css">
<title>Appointment</title>
</head>
<body>
<div class="container">
            <form class="form-horizontal" action="AddAppointment" role="form" method="post">
                <h2>Appointment</h2>
                <div class="form-group">
                    <label for="p_id" class="col-sm-3 control-label"><b>P_ID*</b> </label>
                    <div class="col-sm-9">
                        <input type="text" id="p_id" placeholder="Enter P_ID" class="form-control" name= "p_id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="d_id" class="col-sm-3 control-label"><b>D_ID</b> </label>
                    <div class="col-sm-9">
                        <input type="text" id="d_idr" placeholder="Enter D_ID" class="form-control" name= "d_id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="disease" class="col-sm-3 control-label"><b>Enter Disease</b> </label>
                    <div class="col-sm-9">
                        <input type="text" id="Disease" placeholder="Enter Disease" class="form-control" name= "disease">
                    </div>
                </div>
                <div class="form-group">
                    <label for="appDate" class="col-sm-3 control-label"><b>Date of Appointment*</b></label>
                    <div class="col-sm-9">
                        <input type="date" id="appDate" class="form-control" name="date">
                    </div>
                </div>
              
                <div class="form-group">
                    <label for="appTime" class="col-sm-3 control-label"><b>Time of Appointment*</b></label>
                    <div class="col-sm-9">
                    <input type="time" name="atime">
                    </div>
                </div>
                  
                    <div class="form-group">
                        <label for="Room No" class="col-sm-3 control-label"><b>Room No </b></label>
                    <div class="col-sm-9">
                        <Select name="Room No" >
                        <datalist id="Room No">
                      <option value="101">101</option>
                      <option value="102">102</option>
                       <option value="103">103</option>
                        <option value="104">104</option>
                        <option value="105">105</option>
                        <option value="106">106</option>
                        <option value="107">107</option>
                         <option value="108">108</option>
                         <option value="109">109</option>
                        <option value="110">110</option>
                        <option value="111">111</option>
                         <option value="112">112</option>
                          <option value="113">113</option>
                           <option value="114">114</option>
                            <option value="115">115</option>
                             <option value="NULL">NULL</option>
                      
                      
                      </datalist>
                      </Select>
                    </div>
                  <div class="container" style="background-color:#f1f1f1">
                      <input type="submit" class="submit" value="Book">
                
                 </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
</body>
</html>