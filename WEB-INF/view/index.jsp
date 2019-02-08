<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Auto-form filler &amp; Generator</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/form-elements.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/resources/assets/ico/apple-touch-icon-57-precomposed.png">
<script>
	function getUrl() {
		var re = new RegExp(/^.*\//);
		document.getElementById('myForm').action = re
				.exec(window.location.href)
				+ "/finalpage";
	}

	function validateForm() {

		//Validate DATES
		var dob = document.forms["myForm"]["birth_dob"].value;
		var date = new Date(dob);
		if (!isNaN(date.getTime())) {
			// Months use 0 index.
			document.forms["myForm"]["birth_dob"].value = date.getMonth() + 1
					+ '/' + date.getDate() + '/' + date.getFullYear();
		}
	}
</script>
</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<form:form role="form" id="myForm" action=""
					onsubmit="return validateForm()" method="post" class="names-form"
					name="names" modelAttribute="user">
					<div class="row">
						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Please enter the personal details</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<!-- pencil bar ends here -->
								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="fname"
												placeholder="First Name..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="fname" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="lname"
												placeholder="Last Name..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="lname" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="mname"
												placeholder="middle Name(optional)"
												class="form-username form-control" id="form-fname" />

										</fieldset>
									</div>
									<div class="form-group">
										<div class="form-check form-check-inline">
											<fieldset>
												<form:label path="gender">Gender :</form:label>
												<form:radiobutton path="gender" value="/Y" />
												<form:label path="gender" class="form-check-form:label"
													for="inlineRadio1">male</form:label>
												<form:radiobutton path="gender" value="/N" />
												<form:label path="gender" class="form-check-form:label"
													for="inlineRadio1">Female</form:label>

											</fieldset>
										</div>
									</div>
									<div class="form-group">
										<fieldset>
											<form:label path="marital">Marital Status</form:label>
											<div class="form-check form-check-inline">
												<form:radiobutton path="marital" value="/Single" />
												<form:label path="marital" class="form-check-form:label"
													for="inlineRadio1">single</form:label>
												<form:radiobutton path="marital" value="/Married" />
												<form:label path="marital" class="form-check-form:label"
													for="inlineRadio1">married</form:label>
												<form:radiobutton path="marital" value="/Divorsed" />
												<form:label path="marital" class="form-check-form:label"
													for="inlineRadio1">divorsed</form:label>
												<form:radiobutton path="marital" value="/Widowed" />
												<form:label path="marital" class="form-check-form:label"
													for="inlineRadio1">widowed</form:label>
											</div>

										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="number" path="phone"
												placeholder="Mobile Number..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="phone" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="email" path="email"
												placeholder="E-Mail address..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="email" cssClass="text-warning" />
										</fieldset>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-1 middle-border"></div>

						<div class="col-sm-1"></div>


						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Please enter your mailing details</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="mailAdd_name"
												placeholder="Mailing Name..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="mailAdd_name" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="mailAdd_st"
												placeholder="Street..." class="form-username form-control"
												id="form-fname"  />
											<form:errors path="mailAdd_st" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<div class="form-check form-check-inline">
											<form:radiobutton path="mailAdd_type" value="/#20APT#20" />
											<form:label path="mailAdd_type" class="form-check-form:label"
												for="inlineRadio1">Apt</form:label>
											<form:radiobutton path="mailAdd_type" value="/#20STE#20" />
											<form:label path="mailAdd_type" class="form-check-form:label"
												for="inlineRadio1">Ste</form:label>
											<form:radiobutton path="mailAdd_type" value="/#20FLR#20" />
											<form:label path="mailAdd_type" class="form-check-form:label"
												for="inlineRadio1">Flr</form:label>
										</div>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="mailAdd_number"
												placeholder="###..." class="form-username form-control"
												id="form-fname"  />
											<form:errors path="mailAdd_number" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="mailAdd_city"
												placeholder="City..." class="form-username form-control"
												id="form-fname"  />
											<form:errors path="mailAdd_city" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<form:label path="mailAdd_state">State: </form:label>
										<form:select class="custom select" id="stateSelect"
											path="mailAdd_state">
											<option value="AL">Alabama</option>
											<option value="AK">Alaska</option>
											<option value="AZ">Arizona</option>
											<option value="AR">Arkansas</option>
											<option value="CA">California</option>
											<option value="CO">Colorado</option>
											<option value="CT">Connecticut</option>
											<option value="DE">Delaware</option>
											<option value="DC">District Of Columbia</option>
											<option value="FL">Florida</option>
											<option value="GA">Georgia</option>
											<option value="HI">Hawaii</option>
											<option value="ID">Idaho</option>
											<option value="IL">Illinois</option>
											<option value="IN">Indiana</option>
											<option value="IA">Iowa</option>
											<option value="KS">Kansas</option>
											<option value="KY">Kentucky</option>
											<option value="LA">Louisiana</option>
											<option value="ME">Maine</option>
											<option value="MD">Maryland</option>
											<option value="MA">Massachusetts</option>
											<option value="MI">Michigan</option>
											<option value="MN">Minnesota</option>
											<option value="MS">Mississippi</option>
											<option value="MO">Missouri</option>
											<option value="MT">Montana</option>
											<option value="NE">Nebraska</option>
											<option value="NV">Nevada</option>
											<option value="NH">New Hampshire</option>
											<option value="NJ">New Jersey</option>
											<option value="NM">New Mexico</option>
											<option value="NY">New York</option>
											<option value="NC">North Carolina</option>
											<option value="ND">North Dakota</option>
											<option value="OH">Ohio</option>
											<option value="OK">Oklahoma</option>
											<option value="OR">Oregon</option>
											<option value="PA">Pennsylvania</option>
											<option value="RI">Rhode Island</option>
											<option value="SC">South Carolina</option>
											<option value="SD">South Dakota</option>
											<option value="TN">Tennessee</option>
											<option value="TX">Texas</option>
											<option value="UT">Utah</option>
											<option value="VT">Vermont</option>
											<option value="VA">Virginia</option>
											<option value="WA">Washington</option>
											<option value="WV">West Virginia</option>
											<option value="WI">Wisconsin</option>
											<option value="WY">Wyoming</option>
										</form:select>
									</div>

									<div class="form-group">
										<fieldset>
											<form:input type="number" path="mailAdd_zip"
												placeholder="Zip-Code..." class="form-username form-control"
												id="form-fname"  />
											<form:errors path="mailAdd_zip" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="radio-grp">
										<form:label path="physicalAddressConfirmation">mailing address same as physical address?</form:label>
										<div class="form-check form-check-inline">
											<form:radiobutton path="physicalAddressConfirmation"
												id="inlineRadio1" value="" />
											<form:label path="physicalAddressConfirmation"
												class="form-check-form:label" for="inlineRadio1">Yes</form:label>
											<form:radiobutton path="physicalAddressConfirmation"
												id="inlineRadio2" value="" />
											<form:label path="physicalAddressConfirmation"
												class="form-check-form:label" for="inlineRadio2">no</form:label>
											<div class="reveal-if-active">Anything you want in
												here.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 2nd row-->
					<div class="row">
						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Nationality details and SSN</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<!-- pencil bar ends here -->

								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:input type="number" path="SSN" placeholder="SSN..."
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="SSN" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="country1"
												placeholder="Country/citizenship-i"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="country1" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="country2"
												placeholder="Country/citizenship-ii"
												class="form-username form-control" id="form-fname" />

										</fieldset>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-1 middle-border"></div>
						<div class="col-sm-1"></div>

						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Date of birth details</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<!-- pencil bar ends here -->
								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="birth_city"
												placeholder="City of Birth"
												class="form-username form-control" id="form-fname"
												 />

										</fieldset>
									</div>

									<div class="form-group">
										<fieldset>
											<form:input type="text" path="birth_state"
												placeholder="State of Birth"
												class="form-username form-control" id="form-fname"
												 />

										</fieldset>
									</div>

									<div class="form-group">
										<fieldset>
											<form:input type="text" path="birth_country"
												placeholder="Country of Birth"
												class="form-username form-control" id="form-fname"
												 />

										</fieldset>
									</div>

									<div class="form-group">
										<fieldset>
											<form:input type="date" path="birth_dob"
												placeholder="Date of Birth"
												class="form-username form-control" id="form-fname"
												 />

										</fieldset>
									</div>
								</div>
							</div>
						</div>
						<!--Dob form ends-->

						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Passport details</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<!-- pencil bar ends here -->
								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="i94" placeholder="I-94"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="i94" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="number" path="passport_number"
												placeholder="Passport number"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="passport_number" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="passport_issued_country"
												placeholder="country of passport issued"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="passport_issued_country"
												cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:label path="passport_exp_date">passport expiration date</form:label>
											<form:input type="date" path="passport_exp_date"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="passport_exp_date" cssClass="text-warning" />
										</fieldset>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-1 middle-border"></div>
						<div class="col-sm-1"></div>

						<div class="col-sm-5">
							<div class="form-box">
								<div class="form-top">
									<!-- Top bar which shows the pencil and text -->
									<div class="form-top-left">
										<h3>Travel details</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-pencil"></i>
									</div>
								</div>
								<!-- pencil bar ends here -->
								<div class="form-bottom">
									<div class="form-group">
										<fieldset>
											<form:label path="last_arrival_date">Date of your last arrival</form:label>
											<form:input type="date" path="last_arrival_date"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="last_arrival_date" cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="last_arrival_place"
												placeholder="place of last arrival in US"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="last_arrival_place"
												cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="immigration_status"
												placeholder="Immigration Status"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="immigration_status"
												cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="text" path="curr_immigration_status"
												placeholder="Current Immigration Status"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="curr_immigration_status"
												cssClass="text-warning" />
										</fieldset>
									</div>
									<div class="form-group">
										<fieldset>
											<form:input type="number" path="sevis"
												placeholder="SEVIS Number"
												class="form-username form-control" id="form-fname"
												 />
											<form:errors path="sevis" cssClass="text-warning" />
										</fieldset>
									</div>
								</div>
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-success"
						onclick="return getUrl();">Submit</button>
				</form:form>

			</div>
		</div>

	</div>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">

				<div class="col-sm-8 col-sm-offset-2">
					<div class="footer-border"></div>
					<p>
						Made by (Krishna) & <a
							href="https://www.linkedin.com/in/chandrakishoredanduri"
							target="_blank">(Chandra Kishore Danduri)</a> at <a
							href="https://udayton.edu/" target="_blank"><strong>UDayton</strong></a>
						having a lot of fun. <i class="fa fa-smile-o"></i>
					</p>
				</div>

			</div>
		</div>
	</footer>

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.backstretch.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/scripts.js"></script>

	<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

</body>

</html>