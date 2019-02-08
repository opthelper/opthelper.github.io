<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Initial OPT</title>
<script>
function getUrl() {
	var re = new RegExp(/^.*\//);
  document.getElementById('myForm').action = re.exec(window.location.href)+"/finalpage";
}
</script>
</head>
<body>


<div class="opt-full-form">
	<h1>Initial OPT</h1>
	Your Basic Details:
	<form id="myForm" action="" method="POST">
	<div class="person-details">
 		First name: <input type="text" name="fname"><br>
 		Last name: <input type="text" name="lname"><br>
 		Middle name: <input type="text" name="mname" placeholder="optional"><br>
 		
 		Gender: 
 			<input type="radio" name="gender" value="/Y"> Male
			<input type="radio" name="gender" value="/N"> Female
			<br>
 	
 		Marital Status: 
 			<input type="radio" name="marital" value="/Single"> Single
			<input type="radio" name="marital" value="/Married"> Married
			<input type="radio" name="marital" value="/Divorced"> Divorced
			<input type="radio" name="marital" value="/Widowed"> Widowed 
			<br>
	</div>

	<div class="address details">
		Mailing Address:
		Name: <input type="text" name="mailAdd_name"><br>
		Street: <input type="text" name="mailAdd_st"><br>
		<select name="mailAdd_type">
			<option value = "/#20APT#20">Apt</option>
			<option value = "/#20STE#20">Ste</option>
			<option value = "/#20FLR#20">Flr</option>
		</select>
		<input type="text" name="mailAdd_number" placeholder="Number"><br>
		<input type="text" name="mailAdd_city" placeholder="City">
		<input type="text" name="mailAdd_state" placeholder="State"><br>
		<input type="text" name="mailAdd_zip" placeholder="ZIP-Code">
		<input type="text" name="phone" placeholder="Mobile Number"><br>
		<input type="text" name="email" placeholder="Email"><br>
		
		Current address same as mailing address: 
		<input type="radio" name="address" value="yes"> Yes
		<input type="radio" name="address" value="no"> No<br>
	</div>

	<div class="birth-details">
		Your country/countries of citizenship/Nationality <br>
		<input type="text" name="country1" placeholder="Country Name"> <br>
		<input type="text" name="country2" placeholder="Country Name"> <br> <br>

		Place of Birth:
		City/Town/Village of Birth: <input type="text" name="birth_city"> <br>
		State/Province of Birth: <input type="text" name="birth_state"> <br>
		Country of Birth: <input type="text" name="birth_country"> <br>
		Date of Birth(mm/dd/yyyy): <input type="text" name="birth_dob"> <br>
	</div>
 		<input type="submit" value="Submit" onclick="return getUrl();">
	</form>
</div>
</body>
</html>