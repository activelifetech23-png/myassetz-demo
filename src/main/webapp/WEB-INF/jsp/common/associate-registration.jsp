<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
        	<div class="breadcrumb_top">
        		<div class="container">
					<h2>Associate Registration</h2>
				</div>
        	</div>
        	<div class="breadcrumb_bottom">
        		<div class="container">
					<ul class="nav">
						<li><a href="/">Home</a></li>
						<li class="active"><a href="/our-story">Associate Registration</a></li>
					</ul>
				</div>
        	</div>
        </section>
<!--================End Breadcrumb Area =================-->
        
<!--================About Us Story Area =================-->
<section class="about_story_area p_100 associateregister">
	<div class="container">
		<div class="card card-5">
		<div class="card-heading"><h4 class="txt-color text-white text-center">Associate Registration</h4></div>
		<div class="card-body">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-md-12 marginTop20">
						<h4 class="txt-color">Personal Details</h4>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-3">
						<label>First Name: </label>
						<input type="text" class="form-control width250" value="" placeholder="First Name" maxlength="50" id="txt_first_name">
					</div>
					<div class="col-md-3">
						<label>Middle Name: </label>
						<input type="text" class="form-control width250" value="" placeholder="Middle Name" maxlength="50" id="txt_middle_name">
					</div>
					<div class="col-md-3">
						<label>Last Name: </label>
						<input type="text" class="form-control width250" value="" placeholder="Last Name" maxlength="50" id="txt_last_name">
					</div>
					<div class="col-md-3">
						<label>PAN Number: </label>
						<input type="text" class="form-control width250" value="" placeholder="PAN Number" maxlength="10" id="txt_pan">
					</div>
				</div>
				
				<div class="row mt-4">
					<div class="col-md-3 marginTop20">
						<label>Mobile Number: </label>
						<input type="text" class="form-control width250" value="" placeholder="Mobile" maxlength="10" id="txt_mobile" autocomplete="off" onchange="sendMobileOTP()">
						<p id="mobile_otp_text" class="color_red"></p>
					</div>
					<div class="col-md-3 marginTop20">
						<label>Email ID: </label>
						<input type="text" class="form-control width250" value="" placeholder="Email ID" maxlength="50" id="txt_email" autocomplete="off" onchange="sendEmailOTP()">
						<p id="email_otp_text" class="color_red"></p>
					</div>
					<div class="col-md-3 marginTop20">
						<label>DOB / Date of incorporation: </label>
						<input type="text" class="form-control width250 datepicker" value="" placeholder="Date of Birth (DD-MM-YYYY)" maxlength="10" id="txt_dob">
					</div>
					<div class="col-md-3 marginTop20">
						<label>Type of Organization: </label>
						<select id="sel_org_type" class="form-control">
							<option value="">Select Organization Type</option>     
							<option value="Individual">Individual</option>
							<option value="Private Limited">Private Limited</option>
							<option value="Society">Society</option>
							<option value="Sole Proprietor">Sole Proprietor</option>
							<option value="Public Ltd Company">Public Ltd Company</option>
							<option value="Trust">Trust</option>
							<option value="Partnership Firm">Partnership Firm</option>
							<option value="HUF">HUF</option>
							<option value="Others">Others</option>	
						</select>
					</div>
				</div>
				
				<div class="row mt-3">
					<div class="col-md-3 marginTop20">
						<label>Enter Mobile OTP: </label>
						<input type="text" class="form-control width250" value="" placeholder="Mobile OTP" maxlength="4" id="txt_mobile_otp" autocomplete="off" onchange="mobileOTPVerification()">
						<p id="mobile_otp_verify_text" class="color_green"></p>
					</div>
					<div class="col-md-3 marginTop20">
						<label>Enter Email OTP: </label>
						<input type="text" class="form-control width250" value="" placeholder="Email OTP" maxlength="4" id="txt_email_otp" autocomplete="off" onchange="emailOTPVerification()">
						<p id="email_otp_verify_text" class="color_green"></p>
					</div>
					<div class="col-md-3 marginTop20">
						<label>Password: </label>
						<input type="password" class="form-control width250" value="" placeholder="Password" maxlength="16" autocomplete="off" id="txt_password">
					</div>
					<div class="col-md-3 marginTop20">
						<label>Confirm Password: </label>
						<input type="password" class="form-control width250" value="" placeholder="Confirm Password" maxlength="16" autocomplete="off" id="txt_confirm_password">
					</div>
				</div>
				
				<div class="row mt-3">
					<div class="col-md-12 marginTop20 marginBottom20 text-center">
						<button class="btn btn-primary btn-md btnCol" onclick="registerDetails()">REGISTER</button>
					</div>
				</div>
				
				<div class="row mt-3">
					<div class="col-md-12">
						<P><b>DOCUMENTS REQUIRED FOR PARTNER REGISTRATION:</b></P>
						<p>1. PAN card image</p>
						<p>2. Address proof image (AADHAR / PASSPORT)</p>
						<p>3. Cancelled cheque image</p>
						<p>4. ARN registration number card image</p>
						<p>5. GST Certificate image</p>
					</div>
				</div>
				
				<!-- Second Section Start Here -->
				<div class="col-md-12 border-color marginTop20 second_section">
				
				<div class="row">
				<div class="col-md-12 header_color">
				<div class="marginTop20 marginBottom20 text-center">
				<h4 class="txt-color">Associate Registration</h4>
				</div>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Correspondence Address</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>Address1: </label>
				<input type="text" class="form-control width250" value="" placeholder="Address1" maxlength="50" id="txt_cor_address1">
				</div>
				<div class="col-md-3">
				<label>Address2: </label>
				<input type="text" class="form-control width250" value="" placeholder="Address2" maxlength="50" id="txt_cor_address2">
				</div>
				<div class="col-md-3">
				<label>Pincode: </label>
				<input type="text" class="form-control width250" value="" placeholder="Pincode" maxlength="6" id="txt_cor_pincode" onchange="getCityStateForPincode1()">
				</div>
				<div class="col-md-3">
				<label>City: </label>
				<input type="text" class="form-control width250" value="" placeholder="City" maxlength="50" id="txt_cor_city">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>State: </label>
				<input type="text" class="form-control width250" value="" placeholder="State" maxlength="50" id="txt_cor_state">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Phone Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="Phone Number" maxlength="20" id="txt_cor_phone">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Permanent Address / Registered Office Address</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<input type="checkbox" name="chk_1" id="chk_1" value="" onchange="checkboxChanged()"> Same as above
				</div>
				</div>
				
				<div class="row marginTop20">
				<div class="col-md-3">
				<label>Address1: </label>
				<input type="text" class="form-control width250" value="" placeholder="Address1" maxlength="50" id="txt_per_address1">
				</div>
				<div class="col-md-3">
				<label>Address2: </label>
				<input type="text" class="form-control width250" value="" placeholder="Address2" maxlength="50" id="txt_per_address2">
				</div>
				<div class="col-md-3">
				<label>Pincode: </label>
				<input type="text" class="form-control width250" value="" placeholder="Pincode" maxlength="6" id="txt_per_pincode" onchange="getCityStateForPincode2()">
				</div>
				<div class="col-md-3">
				<label>City: </label>
				<input type="text" class="form-control width250" value="" placeholder="City" maxlength="50" id="txt_per_city">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>State: </label>
				<input type="text" class="form-control width250" value="" placeholder="State" maxlength="50" id="txt_per_state">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Phone Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="Phone Number" maxlength="20" id="txt_per_phone">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Address Proof Required (UPLOAD YOUR AADHAR / PASSPORT IMAGE)</h4>
				</div>
				</div>
				
				<div class="col-md-12 col-sm-12 marginBottom20 padding0 img_div1">
				<p>Aadhaar Card / Passport Image</p>
				<img id="upload_img1" src="" alt="" />
				<p id="para_signature1"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform1" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file1_pan" name="txt_file_pan" />
				<input type="hidden" value="Aadhaar" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file1" name="file1" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn1" class="btn btn-success btn-sm" onclick="chooseFile1()">Upload Your Aadhaar Card / Passport Image</a>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Bank Details</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>IFSC Code: </label>
				<input type="text" class="form-control width250" value="" placeholder="IFSC Code" maxlength="20" id="txt_ifsc_code" onchange="validateIfscCode()">
				</div>
				<div class="col-md-3">
				<label>Account Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="Account Number" maxlength="20" id="txt_acc_no">
				</div>
				<div class="col-md-3">
				<label>Account Type: </label>
				<select id="sel_acc_type" class="form-control">
					<option value="">Select Account Type</option>     
					<option value="Savings">Savings</option>
					<option value="Current">Current</option>
					<option value="Other">Other</option>
				</select>
				</div>
				<div class="col-md-3">
				<label>Bank Name: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank Name" maxlength="50" id="txt_bank_name">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>MICR Code: </label>
				<input type="text" class="form-control width250" value="" placeholder="MICR Code" maxlength="20" id="txt_micr_code">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Bank Address: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank Address" maxlength="50" id="txt_bank_address">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Bank City: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank City" maxlength="50" id="txt_bank_city">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Bank State: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank State" maxlength="20" id="txt_bank_state">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>Bank Pincode: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank Pincode" maxlength="6" id="txt_bank_pincode">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Bank Country: </label>
				<input type="text" class="form-control width250" value="" placeholder="Bank Country" maxlength="20" id="txt_bank_country">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Bank Proof Required (UPLOAD CANCELLED CHEQUE IMAGE)</h4>
				</div>
				</div>
				
				<div class="col-md-12 col-sm-12 marginBottom20 padding0 img_div3">
				<p>Cancelled Cheque Image</p>
				<img id="upload_img3" src="" alt="" />
				<p id="para_signature3"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform3" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file3_pan" name="txt_file_pan" />
				<input type="hidden" value="Cheque" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file3" name="file3" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn3" class="btn btn-success btn-sm" onclick="chooseFile3()">Upload Cancelled Cheque Image</a>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Product Interested</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12">
				<input type="checkbox" value="" id="txt_product_all" onchange="productAllSelected()"> All <br>
				<input type="checkbox" value="" id="txt_mf"> Mutual Fund <br>
				<input type="checkbox" value="" id="txt_life"> Life Insurance <br>
				<input type="checkbox" value="" id="txt_non_life"> Non-Life Insurance <br>
				<input type="checkbox" value="" id="txt_health"> Health Insurance <br>
				<input type="checkbox" value="" id="txt_fd"> Corporate Fixed Deposits <br>
				<input type="checkbox" value="" id="txt_fp"> Financial Planning <br>
				<input type="checkbox" value="" id="txt_real"> Real Estate <br>
				<input type="checkbox" value="" id="txt_mort"> Mortgages <br>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">ARN Details</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>ARN Registered? </label>
				<select id="sel_arn_status" class="form-control" onchange="arnChanged()">
					<option value="">Select ARN Status</option>     
					<option value="Yes">Yes</option>
					<option value="No">No</option>
				</select>
				</div>
				</div>
				
				<div class="row arn_div">
				<div class="col-md-3 marginTop20">
				<label>ARN Code: </label>
				<input type="text" class="form-control width250" value="" placeholder="ARN Code" maxlength="20" id="txt_arn_code">
				</div>
				<div class="col-md-3 marginTop20">
				<label>ARN Issue Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="ARN Issue Date (DD-MM-YYYY)" maxlength="10" id="txt_arn_issue_date">
				</div>
				<div class="col-md-3 marginTop20">
				<label>ARN Expiry Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="ARN Expiry Date (DD-MM-YYYY)" maxlength="10" id="txt_arn_expiry_date">
				</div>
				</div>
				
				<div class="row arn_div">
				<div class="col-md-3 marginTop20">
				<label>EUIN Code: </label>
				<input type="text" class="form-control width250" value="" placeholder="EUIN Code" maxlength="20" id="txt_euin_code">
				</div>
				<div class="col-md-3 marginTop20">
				<label>EUIN Issue Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="EUIN Issue Date (DD-MM-YYYY)" maxlength="10" id="txt_euin_issue_date">
				</div>
				<div class="col-md-3 marginTop20">
				<label>EUIN Expiry Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="EUIN Expiry Date (DD-MM-YYYY)" maxlength="10" id="txt_euin_expiry_date">
				</div>
				</div>
				
				<div class="arn_div">
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">ARN Registration Proof Required (ARN Registration Number Card Image)</h4>
				</div>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0 img_div4">
				<p>ARN Registration Image</p>
				<img id="upload_img4" src="" alt="" />
				<p id="para_signature4"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform4" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file4_pan" name="txt_file_pan" />
				<input type="hidden" value="ARN" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file4" name="file4" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn4" class="btn btn-success btn-sm" onclick="chooseFile4()">Upload ARN Registration Number Card Image</a>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				</div>
				
				<div class="row marginTop20">
				<div class="col-md-3">
				<label>SEBI Registered? </label>
				<select id="sel_sebi_status" class="form-control" onchange="sebiChanged()">
					<option value="">Select SEBI Status</option>     
					<option value="Yes">Yes</option>
					<option value="No">No</option>
				</select>
				</div>
				</div>
				
				<div class="row sebi_div">
				<div class="col-md-3 marginTop20">
				<label>IA Registration Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="IA Registration Number" maxlength="20" id="txt_ia_reg_code">
				</div>
				<div class="col-md-3 marginTop20">
				<label>IA Registration Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="IA Registration Date (DD-MM-YYYY)" maxlength="10" id="txt_ia_reg_date">
				</div>
				<div class="col-md-3 marginTop20">
				<label>IA Registration Expiry Date: </label>
				<input type="text" class="form-control width250 datepicker" value="" placeholder="IA Expiry Date (DD-MM-YYYY)" maxlength="10" id="txt_ia_reg_expiry_date">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Contact Person Details</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12">
				<h6 class="txt-color">Sales</h6>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>Name: </label>
				<input type="text" class="form-control width250" value="" placeholder="Name" maxlength="50" id="txt_sales_name">
				</div>
				<div class="col-md-3">
				<label>Email ID: </label>
				<input type="text" class="form-control width250" value="" placeholder="Email ID" maxlength="50" id="txt_sales_email">
				</div>
				<div class="col-md-3">
				<label>Phone Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="Phone Number" maxlength="20" id="txt_sales_phone">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h6 class="txt-color">Operations</h6>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>Name: </label>
				<input type="text" class="form-control width250" value="" placeholder="Name" maxlength="50" id="txt_operations_name">
				</div>
				<div class="col-md-3">
				<label>Email ID: </label>
				<input type="text" class="form-control width250" value="" placeholder="Email ID" maxlength="50" id="txt_operations_email">
				</div>
				<div class="col-md-3">
				<label>Phone Number: </label>
				<input type="text" class="form-control width250" value="" placeholder="Phone Number" maxlength="20" id="txt_operations_phone">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Business Details</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3">
				<label>Total AUM in Equity Funds (Rs.): </label>
				<input type="text" class="form-control width250" value="" placeholder="Equity AUM" maxlength="20" id="txt_equity_aum">
				</div>
				<div class="col-md-3">
				<label>Total AUM in Debt Funds (Rs.): </label>
				<input type="text" class="form-control width250" value="" placeholder="Debt AUM" maxlength="20" id="txt_debt_aum">
				</div>
				<div class="col-md-3">
				<label>Insurance Premium (Rs.): </label>
				<input type="text" class="form-control width250" value="" placeholder="Insurance Premium" maxlength="20" id="txt_insurance_aum">
				</div>
				<div class="col-md-3">
				<label>Direct Equity (Rs.): </label>
				<input type="text" class="form-control width250" value="" placeholder="Direct Equity" maxlength="20" id="txt_direct_equity_aum">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>Others (Rs.): </label>
				<input type="text" class="form-control width250" value="" placeholder="Others" maxlength="20" id="txt_others_aum">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Number of Investors: </label>
				<input type="text" class="form-control width250" value="" placeholder="No. of Investors" maxlength="10" id="txt_investor_count">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Number of Branches: </label>
				<input type="text" class="form-control width250" value="" placeholder="No. of Branches" maxlength="10" id="txt_branch_count">
				</div>
				<div class="col-md-3 marginTop20">
				<label>Number of Sales Person: </label>
				<input type="text" class="form-control width250" value="" placeholder="No. of Sales Person" maxlength="10" id="txt_sales_person_count">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-3 marginTop20">
				<label>Number of Subbrokers: </label>
				<input type="text" class="form-control width250" value="" placeholder="No. of Subbrokers" maxlength="10" id="txt_subbroker_count">
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Documents Required</h4>
				</div>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0 img_div5">
				<p>Your Photo</p>
				<img id="upload_img5" src="" alt="" />
				<p id="para_signature5"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform5" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file5_pan" name="txt_file_pan" />
				<input type="hidden" value="Photo" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file5" name="file5" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn5" class="btn btn-success btn-sm" onclick="chooseFile5()">Upload Your Photo</a>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0 img_div">
				<p>PAN Image</p>
				<img id="upload_img" src="" alt="" />
				<p id="para_signature"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file_pan" name="txt_file_pan" />
				<input type="hidden" value="PAN" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file" name="file" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn" class="btn btn-success btn-sm" onclick="chooseFile()">Upload Your PAN Image</a>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0 img_div2">
				<p>GST Certificate Image</p>
				<img id="upload_img2" src="" alt="" />
				<p id="para_signature2"></p>
				</div>
				
				<div class="col-md-12 col-sm-12 marginTop20 padding0">
				<div style="height:0px;overflow:hidden;">
				<form id="imageform2" role="form" method="post" enctype="multipart/form-data">
				<input type="hidden" id="txt_file2_pan" name="txt_file_pan" />
				<input type="hidden" value="GST" id="txt_img_type1" name="txt_img_type" />
				<input type="file" id="file2" name="file2" />
				</form>
				</div>
				<a href="javascript:void(0)" id="upload_btn2" class="btn btn-success btn-sm" onclick="chooseFile2()">Upload GST Certificate Image</a> <strong>(If you have GST number, You can upload GST Certificate)</strong>
				<p style="font-size:11px;">You can upload a JPG, GIF or PNG only. Maximum accepted size is 5MB.</p>
				</div>
				
				<div class="row">
				<div class="col-md-12 marginTop20">
				<h4 class="txt-color">Declaration</h4>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12">
				<input type="checkbox" value="" id="txt_declaration" checked="checked" style="margin-right:10px;" /> <span>I/We here by give my/our consent to work as an Associate of financial products (including mutual funds) mobilization within Bridge Investment Services Private Limited ("BIA") on the terms and conditions as mentioned in the Associate agreement of even date which are acceptable to me/us. I/We hereby declare that the particulars furnished above by me/us are true and correct and that no material information has been concealed by me/us. I/We undertake to inform in writing of any change in the particulars furnished above. In case if any of the above information is found to be false or incorrect, I/we shall be solely liable for it. I/we hereby declare and undertake to abide by and strictly adhere to the terms and conditions contained herein including Associate Agreement and the changes as made by "BIA" from time to time. I/We hereby declare that l/we am/are AMFI/NISM/SEBI certified. I/We hereby undertake that I/we shall not distribute financial products including mutual funds in case of expiry of AMFI/SEBI registration till the renewal of the same. I/We hereby declare and undertake to abide by and strictly adhere to the AMFI code of conduct for the mutual funds intermediaries and any other provisions/guidelines pertaining to investment Advisors that may be enacted from time to time by appropriate authorities.</span>
				</div>
				</div>
				
				<div class="row">
				<div class="col-md-12">
				<input type="checkbox" value="" id="txt_agree" checked="checked" style="margin-right:10px;" /> <span>Agree <a target="_blank" href="/terms-and-conditions">Terms & Conditions?</a></span>
				</div>
				</div>
				
				
				
				<div class="row">
				<div class="col-md-12 marginTop20 marginBottom20 text-center">
				<button class="btn btn-primary btn-md btnCol" onclick="validateDetails()">Submit</button>
				</div>
				</div>
				
				</div>
				<!-- Second Section End Here -->
				
				<div class="row">
				<div class="col-md-12 marginBottom50">
				</div>
				</div>
				
			</div>
		</div>
		</div>
		</div>
	</div>
</section>
<!--================End About Us Story Area =================-->

<style type="text/css">
.second_section{
	display:none;
}
.marginTop20{
	margin-top:20px;
}
.marginBottom20{
	margin-bottom:20px;
}
.marginBottom50{
	margin-bottom:50px;
}
.padding0{
	padding:0px;
}

.border-color{
	border:1px solid #0acff7;
}
.header_color{
	background-color:#fff;
	border-bottom:1px solid #0acff7;
}
#para_signature,#para_signature1,#para_signature2,#para_signature3,#para_signature4,#para_signature5,#para_cheque{
	display:none;
}
.img_div,.img_div1,.img_div2,.img_div3,.img_div4,.img_div5{
	display:none;
}
#upload_img,#upload_img1,#upload_img2,#upload_img3,#upload_img4,#upload_img5{
	border: 1px solid #3a4692;
}
#secondappsignature,#thirdappsignature{
	display:none;
}
.color_red{
	font-size:11px;
	font-weight:bold;
	color:red !important;
}
.color_green{
	font-size:11px;
	font-weight:bold;
	color:green !important;
}
select.form-control:not([size]):not([multiple]){
	height: auto;
}
</style>

<script>
var pan_image = "";
var passport_image = "";
var gst_image = "";
var photo_image = "";
var cheque_image = "";
var arn_image = "";

$(document).ready(function(){
	
	$('.datepicker').datepicker({
		format: 'dd-mm-yyyy',
		autoclose:true,
		disableTouchKeyboard:true,
		orientation: "bottom left"
	});
	
	$(".arn_div").hide();
	$(".sebi_div").hide();
	
	$("#file").change(function() 
	{
	   var filename = $("#file").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select the pan image", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				pan_image = img_path;
		        $("#para_signature").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img').attr('src', e.target.result).width(150);
				        $(".img_div").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});
	
	
	$("#file1").change(function() 
	{
	   var filename = $("#file1").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select the Adhar Card / Passport image", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform1")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				passport_image = img_path;
		        $("#para_signature1").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img1').attr('src', e.target.result).width(150);
				        $(".img_div1").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});
	
	$("#file2").change(function() 
	{
	   var filename = $("#file2").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select the GST certificate image", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform2")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				gst_image = img_path;
		        $("#para_signature2").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img2').attr('src', e.target.result).width(150);
				        $(".img_div2").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});
	
	$("#file3").change(function() 
	{
	   var filename = $("#file3").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select the cancelled cheque image", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform3")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				cheque_image = img_path;
		        $("#para_signature3").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img3').attr('src', e.target.result).width(150);
				        $(".img_div3").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});
	
	$("#file4").change(function() 
	{
	   var filename = $("#file4").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select the ARN Registration Number Card image", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform4")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				arn_image = img_path;
		        $("#para_signature4").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img4').attr('src', e.target.result).width(150);
				        $(".img_div4").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});
	
	$("#file5").change(function() 
	{
	   var filename = $("#file5").val(); 	
	   if(filename == "")
	   {
	 	 swal("OOPS!", "Please select your photo", "info");
	 	 return false;
	   }
	   var input = this;
	 	
	 	var formData = new FormData($("#imageform5")[0]);	 	
		var flag = false;
		
		$.LoadingOverlay("show");
		
		$.ajaxSetup({async:false});
		$.ajax({
		    url: '/associate-registration/uploadPanImage',
		    type: 'POST',
		    data: formData,
		    async: true,
		    cache: false,
		    contentType: false,
		    processData: false,
		    beforeSend: function( xhr ) {
	
		    },
		    success: function (response) {
		    	$.LoadingOverlay("hide");
		    	var obj = jQuery.parseJSON(response);
				if(obj.status == 400){
					swal("OOPS!", obj.msg, "info");
					flag = true;
					return false;
				}
				var img_path = $.trim(obj.msg);
				photo_image = img_path;
		        $("#para_signature5").html(img_path);
		        
		        if (input.files && input.files[0]) 
			    {
			        var reader = new FileReader();
			        reader.onload = function (e) 
			        {
			            $('#upload_img5').attr('src', e.target.result).width(150);
				        $(".img_div5").show();
			        }
			        reader.readAsDataURL(input.files[0]);
			     }
		    }
		  });
		
		if(flag)
		{
			return false;
		}
	});	
	
});
function registerDetails()
{
	var first_name = $("#txt_first_name").val();
	var middle_name = $("#txt_middle_name").val();
	var last_name = $("#txt_last_name").val();
	var pan = $("#txt_pan").val();
	var mobile = $("#txt_mobile").val();
	var email = $("#txt_email").val();
	var dob = $("#txt_dob").val();
	var org_type = $("#sel_org_type").val();
	var mobile_otp = $("#txt_mobile_otp").val();
	var email_otp = $("#txt_email_otp").val();
	var password = $("#txt_password").val();
	var confirm_password = $("#txt_confirm_password").val();
	
 	if(first_name == "")
    {
 		swal("","Please enter the first name");
   	    return false;
    }
 	if(pan == "" || pan.length != 10)
    {
 		swal("","Please enter the valid PAN number");
   	    return false;
    }
    var reg = /[A-Za-z]{5}\d{4}[A-Za-z]{1}/;
    if (!reg.test(pan)) 
    {
    	swal({title:"",text:"Please enter the valid PAN number"});
    	return false;
    }
 	if(mobile == "" || mobile.length != 10)
    {
 		swal("","Please enter the valid mobile number");
   	    return false;
    }
 	if(email == "")
    {
 		swal("","Please enter the email ID");
   	    return false;
    }
 	if(dob == "")
    {
 		swal("","Please select the date of birth / date of incorporation");
   	    return false;
    }
 	if(org_type == "")
    {
 		swal("","Please select the organization type");
   	    return false;
    }
 	if(email != "")
    {
 		if( /(.+)@(.+){2,}\.(.+){2,}/.test(email))
 		{
 			
 		}else
 		{
 			swal("","Please enter valid email ID");
 	   	    return false;
 		}
    }
 	if(mobile_otp == "" || mobile_otp.length != 4)
    {
 		swal("","Please enter the valid Mobile OTP");
   	    return false;
    }
 	if(email_otp == "" || email_otp.length != 4)
    {
 		swal("","Please enter the valid Email OTP");
   	    return false;
    }
 	if(password == "")
    {
 		swal("","Please enter the password");
   	    return false;
    }
 	if(confirm_password == "")
    {
 		swal("","Please enter the confirm password");
   	    return false;
    }
    if(password.length < 6 || password.length > 16)
    {
    	swal({title:"",text:"Password must have minimum of 6 characters and maximum 16 characters"});
    	return false;
    }
    if(password != confirm_password)
    {
    	swal({title:"",text:"Password and confirm password not match. Please enter the valid password and confirm password."});
    	return false;
    }
    
    $("#txt_file_pan").val(pan);
    $("#txt_file1_pan").val(pan);
    $("#txt_file2_pan").val(pan);
    $("#txt_file3_pan").val(pan);
    $("#txt_file4_pan").val(pan);
    $("#txt_file5_pan").val(pan);
    
    $(".first_section").hide();
    $(".second_section").show();
    
    $("html, body").animate({ scrollTop: 1200 }, "slow");
}
function sendMobileOTP()
{
	var mobile = $("#txt_mobile").val();
	var name = $("#txt_first_name").val();
	var pan = $("#txt_pan").val();
	
 	if(name == "")
    {
 		swal("","Please enter the first name");
   	    return false;
    }
 	if(pan == "" || pan.length != 10)
    {
 		swal("","Please enter the valid PAN number");
   	    return false;
    }
 	if(mobile == "" || mobile.length != 10)
    {
 		swal("","Please enter the valid mobile number");
   	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/sendAssociateVerificationCode", {name : "" + name + "",pan : "" + pan + "",mobile : "" + mobile + ""}, function(data)     	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 200)
		{
			$("#mobile_otp_text").html("We have sent you a verification code on your mobile number. Please enter the code in Mobile OTP box.");
		}else
		{
			swal("","Please enter the valid mobile number");
	   	    return false;
		}
		
	}, "text");
}
function mobileOTPVerification()
{
	var mobile_otp = $("#txt_mobile_otp").val();
	
 	if(mobile_otp == "" || mobile_otp.length != 4)
    {
 		swal("","Please enter the valid Mobile OTP");
   	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/validateAssociateVerificationCode", {mobile_otp : "" + mobile_otp + ""}, function(data)     	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 200)
		{
			$("#mobile_otp_text").html("");
			$("#mobile_otp_verify_text").html("You have successfully verified your mobile number.");
		}else
		{
			swal("","Your Mobile verification code is wrong. Please check.");
	   	    return false;
		}
		
	}, "text");
}
function sendEmailOTP()
{
	var email = $("#txt_email").val();
	var name = $("#txt_first_name").val();
	var pan = $("#txt_pan").val();
	
 	if(name == "")
    {
 		swal("","Please enter the first name");
   	    return false;
    }
 	if(pan == "" || pan.length != 10)
    {
 		swal("","Please enter the valid PAN number");
   	    return false;
    }
 	if(email == "")
    {
 		swal("","Please enter the valid email ID");
   	    return false;
    }
 	if(/(.+)@(.+){2,}\.(.+){2,}/.test(email))
	{
		
	}else
	{
		swal("","Please enter the valid email ID");
   	    return false;
	}
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/sendAssociateVerificationCode", {name : "" + name + "",pan : "" + pan + "",email : "" + email + ""}, function(data)     	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		if(obj.status == 200)
		{
			$("#email_otp_text").html("We have sent you a verification code on your email ID. Please enter the code in Email OTP box.");
		}else
		{
			swal("","Please enter the valid email ID");
	   	    return false;
		}
		
	}, "text");
}
function emailOTPVerification()
{
	var email_otp = $("#txt_email_otp").val();
	
 	if(email_otp == "" || email_otp.length != 4)
    {
 		swal("","Please enter the valid Email OTP");
   	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/validateAssociateVerificationCode", {email_otp : "" + email_otp + ""}, function(data)     	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj.status == 200)
		{
			$("#email_otp_text").html("");
			$("#email_otp_verify_text").html("You have successfully verified your Email ID.");
		}else
		{
			swal("","Your Email verification code is wrong. Please check.");
	   	    return false;
		}
		
	}, "text");
}
function validateDetails()
{
	var first_name = $("#txt_first_name").val();
	var middle_name = $("#txt_middle_name").val();
	var last_name = $("#txt_last_name").val();
	var pan = $("#txt_pan").val();
	var mobile = $("#txt_mobile").val();
	var email = $("#txt_email").val();
	var dob = $("#txt_dob").val();
	var org_type = $("#sel_org_type").val();
	var password = $("#txt_password").val();
	var confirm_password = $("#txt_confirm_password").val();
	
	var cor_address1 = $("#txt_cor_address1").val();
	var cor_address2 = $("#txt_cor_address2").val();
	var cor_city = $("#txt_cor_city").val();
	var cor_state = $("#txt_cor_state").val();
	var cor_pincode = $("#txt_cor_pincode").val();
	var cor_office = $("#txt_cor_phone").val();
	var per_address1 = $("#txt_per_address1").val();
	var per_address2 = $("#txt_per_address2").val();
	var per_city = $("#txt_per_city").val();
	var per_state = $("#txt_per_state").val();
	var per_pincode = $("#txt_per_pincode").val();
	var per_office = $("#txt_per_phone").val();
	var arn_status = $("#sel_arn_status").val();
	var arn_code = $("#txt_arn_code").val();
	var arn_issue_date = $("#txt_arn_issue_date").val();
	var arn_expiry_date = $("#txt_arn_expiry_date").val();
	var euin_code = $("#txt_euin_code").val();
	var euin_issue_date = $("#txt_euin_issue_date").val();
	var euin_expiry_date = $("#txt_euin_expiry_date").val();
	var sebi_status = $("#sel_sebi_status").val();
	var ia_code = $("#txt_ia_reg_code").val();
	var ia_issue_date = $("#txt_ia_reg_date").val();
	var ia_expiry_date = $("#txt_ia_reg_expiry_date").val();
	var sales_name = $("#txt_sales_name").val();
	var sales_email = $("#txt_sales_email").val();
	var sales_phone = $("#txt_sales_phone").val();
	var operation_name = $("#txt_operations_name").val();
	var operation_email = $("#txt_operations_email").val();
	var operation_phone = $("#txt_operations_phone").val();
	var bank_name = $("#txt_bank_name").val();
	var acc_no = $("#txt_acc_no").val();
	var ifsc_code = $("#txt_ifsc_code").val();
	var micr_code = $("#txt_micr_code").val();
	var acc_type = $("#sel_acc_type").val();
	var bank_address = $("#txt_bank_address").val();
	var bank_city = $("#txt_bank_city").val();
	var bank_state = $("#txt_bank_state").val();
	var bank_country = $("#txt_bank_country").val();
	var bank_pincode = $("#txt_bank_pincode").val();
	var equity_aum = $("#txt_equity_aum").val();
	var debt_aum = $("#txt_debt_aum").val();
	var insurance_aum = $("#txt_insurance_aum").val();
	var direct_equity_aum = $("#txt_direct_equity_aum").val();
	var others_aum = $("#txt_others_aum").val();
	var investor_count = $("#txt_investor_count").val();
	var branch_count = $("#txt_branch_count").val();
	var sales_person_count = $("#txt_sales_person_count").val();
	var subbroker_count = $("#txt_subbroker_count").val();

 	if(cor_address1 == "" && per_address1 == "")
    {
 		swal("","Please enter the address1");
   	    return false;
    }
 	if(cor_city == "" && per_city == "")
    {
 		swal("","Please enter the city");
   	    return false;
    }
 	if(cor_state == "" && per_state == "")
    {
 		swal("","Please enter the state");
   	    return false;
    }
 	if(cor_pincode == "" && per_pincode == "")
    {
 		swal("","Please enter the pincode");
   	    return false;
    }
 	if(arn_status == "")
    {
 		swal("","Please select the ARN status");
   	    return false;
    }
 	if(arn_status == "Yes")
    {
 		if(arn_code == "")
 	    {
 	 		swal("","Please enter the ARN code");
 	   	    return false;
 	    }
 		if(arn_issue_date == "")
 	    {
 	 		swal("","Please enter the ARN issue date");
 	   	    return false;
 	    }
 		if(arn_expiry_date == "")
 	    {
 	 		swal("","Please enter the ARN expiry date");
 	   	    return false;
 	    }
 		if(arn_image == "")
 	    {
 	 		swal("","Please upload your ARN Registration number card image");
 	   	    return false;
 	    }
    }
 	if(sebi_status == "")
    {
 		swal("","Please select the SEBI status");
   	    return false;
    }
 	if(sebi_status == "Yes")
    {
 		if(ia_code == "")
 	    {
 	 		swal("","Please enter the IA code");
 	   	    return false;
 	    }
 		if(ia_issue_date == "")
 	    {
 	 		swal("","Please enter the IA issue date");
 	   	    return false;
 	    }
 		if(ia_expiry_date == "")
 	    {
 	 		swal("","Please enter the IA expiry date");
 	   	    return false;
 	    }
    }
 	if(sales_email != "")
    {
 		if( /(.+)@(.+){2,}\.(.+){2,}/.test(sales_email))
 		{
 			
 		}else
 		{
 			swal("","Please enter valid sales contact person email ID");
 	   	    return false;
 		}
    }
 	if(operation_email != "")
    {
 		if( /(.+)@(.+){2,}\.(.+){2,}/.test(operation_email))
 		{
 			
 		}else
 		{
 			swal("","Please enter valid operations contact person email ID");
 	   	    return false;
 		}
    }
 	if(pan_image == "")
    {
 		swal("","Please upload your PAN image");
   	    return false;
    }
 	if(passport_image == "")
    {
 		swal("","Please upload your address proof image");
   	    return false;
    }
 	if(cheque_image == "")
    {
 		swal("","Please upload your cancelled cheque image");
   	    return false;
    }
 	if(!$("#txt_declaration").is(":checked"))
    {
 		swal("","Please accept our declaration");
   	    return false;
    }
 	if(!$("#txt_agree").is(":checked"))
    {
 		swal("","Please accept our terms and conditions");
   	    return false;
    }
 	var product_array = new Array();
 	if($("#txt_product_all").is(":checked"))
    {
 		product_array.push("Mutual Fund");
 		product_array.push("Life Insurance");
 		product_array.push("Non-Life Insurance");
 		product_array.push("Health Insurance");
 		product_array.push("Corporate Fixed Deposits");
 		product_array.push("Financial Planning");
 		product_array.push("Real Estate");
 		product_array.push("Mortgages");
    }else
    {
    	if($("#txt_mf").is(":checked"))
        {
     		product_array.push("Mutual Fund");
        }
     	if($("#txt_life").is(":checked"))
        {
     		product_array.push("Life Insurance");
        }
     	if($("#txt_non_life").is(":checked"))
        {
     		product_array.push("Non-Life Insurance");
        }
     	if($("#txt_health").is(":checked"))
        {
     		product_array.push("Health Insurance");
        }
     	if($("#txt_fd").is(":checked"))
        {
     		product_array.push("Corporate Fixed Deposits");
        }
     	if($("#txt_fp").is(":checked"))
        {
     		product_array.push("Financial Planning");
        }
     	if($("#txt_real").is(":checked"))
        {
     		product_array.push("Real Estate");
        }
     	if($("#txt_mort").is(":checked"))
        {
     		product_array.push("Mortgages");
        }
    }
 	
 	if(product_array.length == 0)
 	{
 		swal("","Please select product interested details");
   	    return false;
 	}
 	
 	$.LoadingOverlay("show");
 	
	$.ajaxSetup({async:true});
	$.post("/saveAssociateInformation", {first_name : ""+first_name+"",middle_name : ""+middle_name+"",last_name : ""+last_name+"",email : ""+email+"",mobile : ""+mobile+"",dob : ""+dob+"",pan : ""+pan+"",cor_address1 : ""+cor_address1+"",cor_address2 : ""+cor_address2+"",cor_city : ""+cor_city+"",
		cor_state : ""+cor_state+"",cor_pincode : ""+cor_pincode+"",cor_office : ""+cor_office+"",per_address1 : ""+per_address1+"",per_address2 : ""+per_address2+"",per_city : ""+per_city+"",per_state : ""+per_state+"",per_pincode : ""+per_pincode+"",
		per_office : ""+per_office+"",arn_status : ""+arn_status+"",arn_code : ""+arn_code+"",arn_issue_date : ""+arn_issue_date+"",
		arn_expiry_date : ""+arn_expiry_date+"",euin_code : ""+euin_code+"",euin_issue_date : ""+euin_issue_date+"",euin_expiry_date : ""+euin_expiry_date+"",sebi_status : ""+sebi_status+"",ia_code : ""+ia_code+"",
		ia_issue_date : ""+ia_issue_date+"",ia_expiry_date : ""+ia_expiry_date+"",org_type : ""+org_type+"",sales_name : ""+sales_name+"",sales_email : ""+sales_email+"",sales_phone : ""+sales_phone+"",operation_name : ""+operation_name+"",
		operation_email : ""+operation_email+"",operation_phone : ""+operation_phone+"",bank_name : ""+bank_name+"",acc_no : ""+acc_no+"",ifsc_code : ""+ifsc_code+"",micr_code : ""+micr_code+"",acc_type : ""+acc_type+"",bank_address : ""+bank_address+"",
		bank_city : ""+bank_city+"",bank_state : ""+bank_state+"",bank_country : ""+bank_country+"",bank_pincode : ""+bank_pincode+"",equity_aum : ""+equity_aum+"",debt_aum : ""+debt_aum+"",
		insurance_aum : ""+insurance_aum+"",direct_equity_aum : ""+direct_equity_aum+"",others_aum : ""+others_aum+"",investor_count : ""+investor_count+"",branch_count : ""+branch_count+"",sales_person_count : ""+sales_person_count+"",subbroker_count : ""+subbroker_count+"",
		password : ""+password+"",pan_image : ""+pan_image+"",passport_image : ""+passport_image+"",cheque_image : ""+cheque_image+"",gst_image : ""+gst_image+"",photo_image : ""+photo_image+"",arn_image : ""+arn_image+"",product_array : ""+product_array+""}, function(data)
    {
			$.LoadingOverlay("hide");
			
			var result = $.trim(data);
			if(result == "true")
			{
				swal({
					  title: 'Success!',
					  text: "Your details successfully saved. Our executive will contact you shortly.",
					  type: 'success',
					  html:true
					},
					function(){
						top.location = "/";
				});
				
			}else{
				swal("Error!",result,"error");
			}
    },'text');
}
function checkboxChanged()
{
	if($("#chk_1").is(":checked"))
	{
		var cor_address1 = $("#txt_cor_address1").val();
		var cor_address2 = $("#txt_cor_address2").val();
		var cor_city = $("#txt_cor_city").val();
		var cor_state = $("#txt_cor_state").val();
		var cor_pincode = $("#txt_cor_pincode").val();
		var cor_phone = $("#txt_cor_phone").val();
		$("#txt_per_address1").val(cor_address1);
		$("#txt_per_address2").val(cor_address2);
		$("#txt_per_city").val(cor_city);
		$("#txt_per_state").val(cor_state);
		$("#txt_per_pincode").val(cor_pincode);
		$("#txt_per_phone").val(cor_phone);
    }else
    {
    	$("#txt_per_address1").val("");
		$("#txt_per_address2").val("");
		$("#txt_per_city").val("");
		$("#txt_per_state").val("");
		$("#txt_per_pincode").val("");
		$("#txt_per_phone").val("");
    }
}
function arnChanged()
{
	var arn_status = $("#sel_arn_status").val();
	if(arn_status == "Yes")
	{
		$(".arn_div").show();
	}else
	{
		$(".arn_div").hide();
	}
}
function sebiChanged()
{
	var sebi_status = $("#sel_sebi_status").val();
	if(sebi_status == "Yes")
	{
		$(".sebi_div").show();
	}else
	{
		$(".sebi_div").hide();
	}
}
function validateIfscCode()
{
	var ifsc = $("#txt_ifsc_code").val();
	
	if(ifsc == "" || ifsc.length != 11)
    {
		swal("OOPS!", "Please enter the valid bank IFSC code", "info");
 	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/validateIfscCode", {ifsc : "" + ifsc.toUpperCase() + ""}, function(data)       	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		var status = obj.status;
		if(status == undefined){
			status = "";
		}
		
		if(status == "failed")
		{
			swal("Failure!", "This IFSC code bank details not available. Please enter the details manually.", "error");
			return;
		}
		var bank_api_name = obj.BANK;
		//var bank_api_address = obj.ADDRESS;
		var bank_api_ifsc = obj.IFSC;
		var bank_api_address = obj.BRANCH;
		var bank_api_micrcode = obj.MICR;
		var bank_city = obj.CITY;
		var bank_state = obj.STATE;
		var bank_pincode = "";
		if(bank_api_name == undefined){
			bank_api_name = "";
		}
		if(bank_api_ifsc == undefined){
			bank_api_ifsc = "";
		}
		if(bank_api_address == undefined){
			bank_api_address = "";
		}
		if(bank_api_micrcode == undefined){
			bank_api_micrcode = "";
		}
		if(bank_city == undefined){
			bank_city = "";
		}
		if(bank_state == undefined){
			bank_state = "";
		}
		
		if(isNaN(bank_api_micrcode))
		{
			bank_api_micrcode = "";
		}
		
		bank_api_name = bank_api_name.replace(/[^a-zA-Z0-9-.,# \s]/gi, '');
		bank_api_address = bank_api_address.replace(/[^a-zA-Z0-9-.,# \s]/gi, '');
		bank_city = bank_city.replace(/[^a-zA-Z0-9-.,# \s]/gi, '');
		bank_state = bank_state.replace(/[^a-zA-Z0-9-.,# \s]/gi, '');
		
		$("#txt_bank_name").val(bank_api_name);
		$("#txt_bank_address").val(bank_api_address);
		$("#txt_micr_code").val(bank_api_micrcode);
		$("#txt_ifsc_code").val(bank_api_ifsc);
		$("#txt_bank_city").val(bank_city);
		$("#txt_bank_state").val(bank_state);
		$("#txt_bank_country").val("India");
		$("#txt_bank_pincode").val(bank_pincode);
		
	}, "text");
}
function getCityStateForPincode1()
{
	var pincode = $("#txt_cor_pincode").val();
	if(pincode == "" || pincode.length != 6)
    {
		swal("OOPS!", "Please enter the valid pincode", "info");
 	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/getCityStateForPincode", {pincode : "" + pincode + ""}, function(data)       	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj == null || obj == "null")
		{
			swal("OOPS!", "This pincode not available. Please enter the details.", "info");
	 	    return false;
		}else
		{
			var city = obj.city;
			var state = obj.state;
			
			$("#txt_cor_city").val(city);
			$("#txt_cor_state").val(state);
		}
		
	}, "text");
}
function getCityStateForPincode2()
{
	var pincode = $("#txt_per_pincode").val();
	if(pincode == "" || pincode.length != 6)
    {
		swal("OOPS!", "Please enter the valid pincode", "info");
 	    return false;
    }
	
	$.LoadingOverlay("show");
	
	$.ajaxSetup({async:true});
	$.post("/getCityStateForPincode", {pincode : "" + pincode + ""}, function(data)       	   
	{
		$.LoadingOverlay("hide");
		var result = $.trim(data);
		var obj = jQuery.parseJSON(result);
		
		if(obj == null || obj == "null")
		{
			swal("OOPS!", "This pincode not available. Please enter the details.", "info");
	 	    return false;
		}else
		{
			var city = obj.city;
			var state = obj.state;
			
			$("#txt_per_city").val(city);
			$("#txt_per_state").val(state);
		}
		
	}, "text");
}
function chooseFile() {
	$("#file").click();
}
function chooseFile1() {
	$("#file1").click();
}
function chooseFile2() {
	$("#file2").click();
}
function chooseFile3() {
	$("#file3").click();
}
function chooseFile4() {
	$("#file4").click();
}
function chooseFile5() {
	$("#file5").click();
}
function productAllSelected()
{
	if($("#txt_product_all").is(":checked"))
	{
		$("#txt_mf").prop("checked", true);
		$("#txt_life").prop("checked", true);
		$("#txt_non_life").prop("checked", true);
		$("#txt_health").prop("checked", true);
		$("#txt_fd").prop("checked", true);
		$("#txt_fp").prop("checked", true);
		$("#txt_real").prop("checked", true);
		$("#txt_mort").prop("checked", true);
		
		$("#txt_mf").attr("disabled", true);
		$("#txt_life").attr("disabled", true);
		$("#txt_non_life").attr("disabled", true);
		$("#txt_health").attr("disabled", true);
		$("#txt_fd").attr("disabled", true);
		$("#txt_fp").attr("disabled", true);
		$("#txt_real").attr("disabled", true);
		$("#txt_mort").attr("disabled", true);
		
    }else
    {
		$("#txt_mf").prop("checked", false);
		$("#txt_life").prop("checked", false);
		$("#txt_non_life").prop("checked", false);
		$("#txt_health").prop("checked", false);
		$("#txt_fd").prop("checked", false);
		$("#txt_fp").prop("checked", false);
		$("#txt_real").prop("checked", false);
		$("#txt_mort").prop("checked", false);
		
		$("#txt_mf").removeAttr("disabled");
		$("#txt_life").removeAttr("disabled");
		$("#txt_non_life").removeAttr("disabled");
		$("#txt_health").removeAttr("disabled");
		$("#txt_fd").removeAttr("disabled");
		$("#txt_fp").removeAttr("disabled");
		$("#txt_real").removeAttr("disabled");
		$("#txt_mort").removeAttr("disabled");
    }
}
</script>