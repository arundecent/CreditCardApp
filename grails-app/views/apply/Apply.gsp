<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 	
 </head>

 <body>
 <script language="javascript" href="js/retrieve.js"></script>
 <g:form method="post" action="submit" name="details" enctype="multipart/form-data">
  <h2>Before you Apply !</h2><br>
  <h3>1. Please note that you must be 18 years or older<br>
  2. You must have a valid Social Security Number</h3>
<h3>Personal Information</h3>
Email:&nbsp; <input type="text" size="25" value="" maxlength="50" name="email" >
&nbsp;&nbsp;&nbsp;First Name :&nbsp; <input type="text" size="25" value="" maxlength="50" name="fname">
&nbsp;&nbsp;&nbsp;Last Name :&nbsp; <input type="text" size="25" value="" maxlength="50" name="lname" >
Street:&nbsp; <input type="text" size="25" value="" maxlength="50" name="street" >
Apartment:&nbsp; <input type="text" size="25" value="" maxlength="50" name="apartment" ><br>
<br>
City:&nbsp; <input type="text" size="25" value="" maxlength="50" name="city" >
State : <select name="state">
  <option value="il">IL</option>
  <option value="az">AZ</option>
  <option value="mo">MO</option>
  <option value="ny">NY</option>
</select>
&nbsp;Zipcode&nbsp; <input type="text" size="5" value="" maxlength="5" name="zcode" >
Primary Phone&nbsp; <input type="text" size="10" value="" maxlength="10" name="pphone" >
SSN&nbsp; <input type="text" size="7" value="" maxlength="7" name="ssn" >
Date Of Birth(mm/dd/yyyy):
<select name="mm">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
</select>
<select name="dd">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
  <option value="13">13</option>
  <option value="14">14</option>
  <option value="15">15</option>
  <option value="16">16</option>
  <option value="17">17</option>
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="30">30</option>
</select>
<select name="yyyy">
<option value="1988">1988</option>
<option value="1989">1989</option>
</select>
<br><br>
Security Word Hint:<select name="squestion">
<option value="a">city born</option>
<option value="b">fathers middle name </option>
</select>
Security Word:<input type="text" size="25" value="" maxlength="50" name="sword" >



<h3>Employment Information</h3>
Annual Salary <input type="text" name="annualsalary" size="20" value="" maxlength="40" >
Other Income <input type="text" name="otherincome" size="6" value="" maxlength="10">
Residential Status
<select name="resstatus">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
<br>
<br>

Monthly Rent<input type="text" name="mmr" size="10" value="" maxlength="10">
Work Phone<input type="text" name="wphone" size="10" value="" maxlength="10">
Bankstatement(3 Months)<input type="file" name="datafile">
<br>
<br>
<center><input type="button" name="verify" value="Verify" onclick="FormFill(this.form)"></Center>
</g:form>



 </body>
</html>

