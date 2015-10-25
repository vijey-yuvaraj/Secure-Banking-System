<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Update Personal Information</title>

<style type="text/css">
h3 {
	font-family: Calibri;
	font-size: 22pt;
	font-style: normal;
	font-weight: bold;
	color: Black;
	text-align: center;
	text-decoration: underline
}

table {
	font-family: Calibri;
	color: black;
	font-size: 11pt;
	font-style: normal;
	text-align:;
	border-collapse: collapse;
}

table.inner {
	border: 0px
}
</style>
</head>

<body>

	<h3>Update Your Personal Information</h3>

	<form:form
		action="${pageContext.request.contextPath}/employee/editinfo/save"
		name="RForm" method="post" onsubmit="return validateForm()">

		<table align="center" cellpadding="10">
			<tr>
				<td colspan="2"><div id="errors" style="color: #ff0000">${errors}</div></td>
			</tr>
			<tr>
				<td>FIRST NAME *</td>
				<td><input type="text" name="FName" maxlength="30" value="${user.getFirstname()}"/>(max 30
					characters a-z and A-Z)</td>
			</tr>

			<tr>
				<td>MIDDLE NAME</td>
				<td><input type="text" name="MName" maxlength="30"  value="${user.getMiddlename()}"/>(max 30
					characters a-z and A-Z)</td>
			</tr>

			<tr>
				<td>LAST NAME *</td>
				<td><input type="text" name="LName" maxlength="30"   value="${user.getLastname()}"/>(max 30
					characters a-z and A-Z)</td>
			</tr>

			<tr>
				<td>EMAIL ID *</td>
				<td><input type="text" name="Email" maxlength="100" value="${user.getEmail().getUsername()}" disabled/></td>
			</tr>

			<tr>
				<td>Password *</td>
				<td><input type="password" name="Pass" maxlength="100" value=""/></td>
			</tr>

			<tr>
				<td>Retype Password *</td>
				<td><input type="password" name="RPass" maxlength="100" value=""/></td>
			</tr>

			<tr>
				<td>ADDRESS line 1 *<br />
				<br />
				<br /></td>
				<td><textarea name="Address1" rows="4" cols="15"  value="${user.getAddressline1()}"></textarea></td>
			</tr>

			<tr>
				<td>ADDRESS line 2 *<br />
				<br />
				<br /></td>
				<td><textarea name="Address2" rows="4" cols="15" value="${user.getAddressline2()}"></textarea></td>
			</tr>

			<tr>
				<td>CITY *</td>
				<td><input type="text" name="City" maxlength="30" value="${user.getCity()}"/>(max 30
					characters a-z and A-Z)</td>
			</tr>

			<tr>
				<td>ZIP CODE *</td>
				<td><input type="text" name="Zipcode" maxlength="6" value="${user.getZipcode()}" />(6 digit
					number)</td>
			</tr>


			<tr>
				<td>STATE *</td>
				<td><input type="text" name="State" maxlength="30" value="${user.getState()}"/>(max 30
					characters a-z and A-Z)</td>
			</tr>


			<tr>
				<td>SSN *</td>
				<td><input type="text" name="SSN" maxlength="30" value="${user.getSsn()}"/></td>
			</tr>


			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Update Info"> 
				</td>
			</tr>
		</table>

	</form:form>

	<script language="javascript">
		function validateForm() {
			var a = document.forms["RForm"]["FName"].value;
			if (a == null || a == "") {
				alert("please Enter First Name");
				return false;
			}

			var m = document.forms["RForm"]["LName"].value;
			if (m == null || m == "") {
				alert("please Enter the Last Name");
				return false;
			}

			var f = document.forms["RForm"]["Address1"].value;
			if (f == null || f == "") {
				alert("please Enter Address");
				return false;
			}

			var h = document.forms["RForm"]["Address2"].value;
			if (h == null || h == "") {
				alert("please Enter Address");
				return false;
			}

			var g = document.forms["RForm"]["City"].value;
			if (g == null || g == "") {
				alert("please Enter City");
				return false;
			}

			var j = document.forms["RForm"]["Zipcode"].value;
			if (j == null || j == "") {
				alert("please Enter Zipcode");
				return false;
			}
			if (isNaN(j) || j.indexOf(" ") != -1) {
				alert("Enter numeric value");
				return false;
			}
			if (j.length > 5) {
				alert("Enter only 5 characters");
				return false;
			}

			var i = document.forms["RForm"]["State"].value;
			if (i == null || i == "") {
				alert("please Enter State");
				return false;
			}

			var k = document.forms["RForm"]["SSN"].value;
			if (k == null || k == "") {
				alert("please Enter the SSN number");
				return false;
			}
			if (isNaN(k) || k.indexOf(" ") != -1) {
				alert("Enter numeric value");
				return false;
			}
			if (k.length > 10) {
				alert("enter 9 characters");
				return false;
			}
		}
	</script>

</body>
</html>