
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css"
	integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
	integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="home.css">
</head>
<body id="body">
	<!-- <div class=top-header>
		<div class="hom-header_ui">
			<a href="https://corp.freshersworld.com">
				<div class="employer_zone">Employer Zone</div>
			</a><a href="https://corp.freshersworld.com/institutes"><div
					class="inst-zone">Institute Zone</div></a>
		</div>
	</div>
	<hr> -->
	<nav class="navbar bg-body-tertiary">

		<a class="navbar-brand"><img
			src="https://ssism.org/img/webimg/logo.png"> </a>
		<ul class="main-tj-nav clearfix">
			<li class="notification viewnote"></li>
			<li ><li><div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle " href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>
							login</b> </a>

					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="login.jsp">Student</a></li>
						
						<li><a class="dropdown-item" href="login_recruiter.jsp">Recruiter</a></li>
						
						<li><a class="dropdown-item" href="login_admin.jsp">Admin</a></li>
						
					</ul>
			</div></li>


			<li><div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle " href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false"><b>
							Register</b> </a>

					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="Register_student.jsp">Student</a></li>
						
						<li><a class="dropdown-item"
							href="Registration_recruiter.jsp">Recruiter</a></li>
						
					</ul>
				</div></li>

		</ul>
	</nav>
	</div>

	<div class="main-body">

		<div class="top-background">
			<img class="" height="162px" width="100%"
				src="https://static.timesjobs.com/images_cand/tj_images/usability/open-search-bg.png">
		</div>
	</div>
	<div class="search-block" style="justify-content: normal;">
		<div class="display-flex" style="margin-top: 40px;">
			<div class="search-section">
				<div class="row job-intern-btn">
					<div class="job-btn top-btn active-btn">All Jobs</div>
					<div class="intership-btn top-btn">Internships</div>
				</div>
				<div class="search-bar row margin-none" style="height: 82px;">
					<div class="search_disabled">
						<input type="text" readonly="" class="search_bar "
							placeholder="Search Job Title, Company, Skills">
					</div>
					<div class="search-jobs row display-none">
						<div class="search-roles" id="close-trending">
							<input type="text"
								class="search_role_bar search_Job_keyword_cookie search-input-buttons keyword-search ui-autocomplete-input"
								id="keyword" placeholder="Search Job Title, Company, Skills"
								onkeypress="hideTrendingKeywords()"
								onclick="showTrendingKeywords()" readonly="readonly">
							<div class="trending-keyword-section" style="display: none;">
								<span class="heading">Trending</span>
								<div class="trending-keyword-list-block">
									<div class="trend-key-list"
										onclick="trendkeywordclick('work from home')">
										<img
											src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/keyword.svg">
										<span>work from home</span>
									</div>
									<div class="trend-key-list"
										onclick="trendkeywordclick('IT Software-Engineer')">
										<img
											src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/keyword.svg">
										<span>IT Software-Engineer</span>
									</div>
									<div class="trend-key-list"
										onclick="trendkeywordclick('DAta analyst')">
										<img
											src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/keyword.svg">
										<span>DAta analyst</span>
									</div>
									<div class="trend-key-list"
										onclick="trendkeywordclick('Software Testing')">
										<img
											src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/keyword.svg">
										<span>Software Testing</span>
									</div>
									<div class="trend-key-list" onclick="trendkeywordclick('Java')">
										<img
											src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/keyword.svg">
										<span>Java</span>
									</div>
								</div>
							</div>
						</div>
						<div class="search-courses">
							<select class="select_courses" id="course_id1">
								<option value="" class="placeholder_text" selected="selected">Select
									Course</option>
								<optgroup label="Popular Courses" class="select-options">
									<option class="select-options 16" value="16">BE/B.Tech
									</option>
									<option class="select-options 17" value="17">MBA/PGDM
									</option>
									<option class="select-options 21" value="21">MCA</option>
									<option class="select-options 24" value="24">ME/M.Tech
									</option>
									<option class="select-options 34" value="34">MSc</option>
								</optgroup>
								<optgroup label="UG Courses" class="select-options">
									<option class="select-options" value="2">B.Arch</option>
									<option class="select-options" value="6">B.Com</option>
									<option class="select-options" value="7">B.Pharm</option>
									<option class="select-options" value="8">BA</option>
									<option class="select-options" value="13">BBA/BBM</option>
									<option class="select-options" value="14">BCA</option>
									<option class="select-options" value="15">BDS</option>
									<option class="select-options" value="16">BE/B.Tech</option>
									<option class="select-options" value="18">BEd</option>
									<option class="select-options" value="19">BHM</option>
									<option class="select-options" value="20">BSc</option>
									<option class="select-options" value="25">BVSc</option>
									<option class="select-options" value="26">CA</option>
									<option class="select-options" value="27">CS</option>
									<option class="select-options" value="28">ICWA</option>
									<option class="select-options" value="29">LLB</option>
									<option class="select-options" value="30">MBBS</option>
									<option class="select-options" value="43">B.Design</option>
									<option class="select-options" value="44">B.FashionTech
									</option>
									<option class="select-options" value="45">BFA</option>
									<option class="select-options" value="46">BAMS</option>
									<option class="select-options" value="47">BHMS</option>
									<option class="select-options" value="49">B.P.Ed</option>
									<option class="select-options" value="51">B.F.Sc(Fisheries)
									</option>
									<option class="select-options" value="55">BSW</option>
									<option class="select-options" value="5011">Other
										Graduate</option>
								</optgroup>
								<optgroup label="PG Courses" class="select-options">
									<option class="select-options" value="1">LLM</option>
									<option class="select-options" value="5">M Phil / Ph.D
									</option>
									<option class="select-options" value="9">M.Arch</option>
									<option class="select-options" value="10">M.Com</option>
									<option class="select-options" value="11">M.Pharm</option>
									<option class="select-options" value="12">MA</option>
									<option class="select-options" value="17">MBA/PGDM</option>
									<option class="select-options" value="21">MCA</option>
									<option class="select-options" value="22">MD</option>
									<option class="select-options" value="23">MDS</option>
									<option class="select-options" value="24">ME/M.Tech</option>
									<option class="select-options" value="31">MEd</option>
									<option class="select-options" value="32">MHM</option>
									<option class="select-options" value="33">MS</option>
									<option class="select-options" value="34">MSc</option>
									<option class="select-options" value="35">MSW</option>
									<option class="select-options" value="36">PG Diploma</option>
									<option class="select-options" value="48">MVSc</option>
									<option class="select-options" value="50">MPEd</option>
									<option class="select-options" value="52">M.F.Sc(Fisheries)
									</option>
									<option class="select-options" value="5012">Other Post
										Graduate</option>
								</optgroup>
								<optgroup label="Other Courses" class="select-options"></optgroup>
							</select>
						</div>
						<div class="search-loc">
							<input type="text" id="job_location"
								class="search_role_bar typeahead location-search ui-autocomplete-input"
								style="background: none; padding-left: 20px !important; width: 263px;"
								placeholder="Enter location"> <span
								class="location_error location_error_style">Please Enter
								valid city</span>
						</div>
					</div>
					<div class="search_btn">
						<div class="search-btn search_btn_form" id="search_job_button">Search
							Jobs</div>
						<div class="adv-search" style="display: none;">Advanced
							Search</div>
						<div class="basic-search"
							style="display: none; margin-left: 57px;">Basic Search</div>
					</div>
					<div class="close-search-icon display-none">
						<img class="" height="28px" width="28px"
							src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/close_search_homepage.svg"
							alt="Close icon">
					</div>
					<div class="row search-advance display-none">
						<div class="search-exp">
							<select class="select_exp" id="exp">
								<option value="" class="select-options placeholder_text"
									selected="selected">Experience</option>
								<option value="">Any</option>
								<option value="0">0 (Fresher)</option>
								<option value="06">06 Months</option>
								<option value="12">1 Year</option>
								<option value="18">1.5 Years</option>
								<option value="24">2 Years</option>
								<option value="30">2.5 Years</option>
								<option value="36">3 years</option>
								<option value="500">3+ years</option>
							</select>
						</div>
						<div class="search-job-type" id="job_drop_down">
							<input type="hidden" name="job_type" id="job_type_search"
								class="form-control" value="">
							<dl
								class="jobtype_dropdown search-input-buttons background-select course-search job-type-block">
								<dt>
									<span class="hida placeholder_text">Job Type</span>
									<div class="multiSel"></div>
									<div class="multiSelcount"></div>
								</dt>
								<dd>
									<div class="jobtype_multiselect">
										<ul>
											<li><input type="checkbox" class="jobtype_checkbox"
												name="job_type" value="1"> <span>Full Time</span></li>
											<li><input type="checkbox" class="jobtype_checkbox"
												name="job_type" value="2"> <span>Part Time</span></li>
											<li><input type="checkbox" class="jobtype_checkbox"
												name="job_type" id="intern_checkbox" value="3"> <span>Internship</span>
											</li>
											<li><input type="checkbox" class="jobtype_checkbox"
												name="job_type" value="6"> <span>Apprenticeship</span>
											</li>
										</ul>
									</div>
								</dd>
							</dl>
						</div>
						<div class=" search-branch">
							<select class="select_branch" id="branch_id">
								<option value="" class="placeholder_text" disabled=""
									selected="">Select Branch</option>
							</select>
						</div>
						<div class="search-loc">
							<input type="text" id="sub_location"
								class="search_role_bar ui-autocomplete-input"
								style="padding-left: 20px !important; background: none; width: 263px;"
								placeholder="Enter Sub location">
						</div>
					</div>
				</div>
			</div>
			<div class="resume-section padding-none">
				<div class="resume-upload-section">
					<p class="resume-head">ARE YOU A FRESHER?</p>
					<p class="resume-sub-head">Looking for your first Dream Job?</p>
					<div class="btn-upload">

						<span class="upload-btn" id="resumeuploadid3"
							style="display: none;">Update Resume </span> <span
							class="upload-btn" id="resumeuploadid3_reg"
							style="display: inline-block;">Upload Resume </span>
					</div>
				</div>
			</div>
		</div>
		<div class="recent_searches_block col-md-12 col-lg-12"
			style="display: none;">
			<div class="col-md-12 col-lg-12 padding-none"
				style="display: inline-flex;">
				<!-- <span class="search_label">Your recent searches</span> -->
				<div class="recent_searches col-md-10 col-lg-10"
					style="display: flex;"></div>
			</div>
		</div>
	</div>
	<div class="top-company-block">
		<div class="jobscategory-job-head">
			<div class="blank_div"></div>
			<h2 class="h2_heading">Top Feature Companies</h2>
			<div class="pm-job-icon">
				<span class="slide_jobs_Left" style="margin-right: 12px;"
					id="slide_jobs_Left" data-target="#top_companies_crousel"
					data-slide-to="0"><img width="40px" height="39px"
					src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/joblisting/jobdisplay/left_scroll_enable.svg"
					alt="scroll-icon"></span><span id="slide_jobs_Right"
					class="slide_jobs_Right" data-target="#top_companies_crousel"
					data-slide-to="1"><img width="40px" height="39px"
					src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/joblisting/jobdisplay/right_scroll.svg"
					alt="scroll-icon"></span>
			</div>
		</div>
		<div id="top_companies_crousel"
			class="carousel slide top-companies-block" data-ride="carousel">
			<ol class="carousel-indicators top_company_indicator">
				<li data-target="#top_companies_crousel" data-slide-to="0" class=""></li>
				<li data-target="#top_companies_crousel" data-slide-to="1"
					class="active"></li>
			</ol>
			<div class="carousel-inner company-body">
				<div class="carousel-item company_banner">
					<div class="top_company">
						<img width="1248px" height="385px"
							src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/top_companies_1.png"
							alt="company-image">
					</div>
				</div>
				<div class="carousel-item company_banner active">
					<div class="top_company">
						<img width="1248px" height="385px"
							src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/home-page/top_company_img_2.png"
							alt="company-image">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer footerWrapper">
		<div class="align-center">
			<div class="col-xs-12 col-lg-12 col-md-12 padding-none">
				<div style="display: flex; margin-bottom: 10px;">
					<div class="col-xs col-lg col-md padding-none">
						<div class="row footer-links-block">
							<div class="employers-zone-block" style="margin-left: -3%;">
								<div class="employer-head">COMPANY</div>
								<ul class="employers-link-listing">
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/about-us" target="_blank"
										data-toggle="toggle" title="About Us">About Us</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/about-us/our-team"
										target="_blank" data-toggle="toggle" title="About Us">Our
											Team</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links" rel="noopener"
										href="https://www.freshersworld.com/about-us/press"
										target="_blank" data-toggle="toggle" title="Blog">Press</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links" rel="noopener"
										href="https://blog.freshersworld.com" target="_blank"
										data-toggle="toggle" title="Blog">Blog</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/success-stories"
										target="_blank" data-toggle="toggle" title="FAQs">Success
											Stories </a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/advertise" target="_blank"
										data-toggle="toggle" title="Adverise With Us">Advertise
											With Us</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/contactus" target="_blank"
										data-toggle="toggle" title="Contact Us">Contact Us</a></li>
								</ul>
							</div>
							<div class="employers-zone-block"
								style="margin-right: -5%; margin-left: 3%;">
								<div class="employer-head" style="margin-left: -11px;">Candidates
									Zone</div>
								<ul class="employers-link-listing">
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/ceat" target="_blank"
										data-toggle="toggle" title="CEAT">CEAT</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/user/premium_packages?utm_source=homefooter"
										target="_blank" data-toggle="toggle"
										title="Premium Membership">Premium Membership</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://placement.freshersworld.com/" target="_blank"
										data-toggle="toggle" title="Placement Preparation">Placement
											Preparation</a></li>
									<li class="post-job-link"><a
										class="footersub bottom-footersub-links"
										href="https://www.freshersworld.com/jobs-roles-responsibilities-and-duties/737301"
										target="_blank" data-toggle="toggle"
										title="Jobs Roles &amp; Responsibilities">Jobs Roles &amp;
											Responsibilities</a></li>
								</ul>
							</div>
							<div class="employers-zone-block"
								style="margin-left: 10%; margin-right: -5%;">
								<div class="employer-head" style="margin-left: 7px;">Employers
									Zone</div>
								<ul class="employers-link-listing">
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/post-job?utm_source=homefooter"
										target="_blank" data-toggle="toggle"
										title="Free Job Posting Site in India">Post Job for Free</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/end-to-end-recruitment"
										target="_blank" data-toggle="toggle"
										title="End-to-End Recruitment">End-to-End Recruitment</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/campus-recruitment"
										target="_blank" data-toggle="toggle"
										title="Campus Recruitment">Campus Recruitment</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/online-assessment"
										target="_blank" data-toggle="toggle" title="Online Assessment">Online
											Assessment</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/resume-search"
										target="_blank" data-toggle="toggle" title="Resume Search">Resume
											Search</a></li>
								</ul>
							</div>
							<div class=" employers-zone-block" style="margin-left: 10%;">
								<div class="employer-head" style="margin-left: 13px;">Institutes
									Zone</div>
								<ul class="employers-link-listing">
									<li class="post-job-link"><a class="footersub"
										href="https://corp.freshersworld.com/employers/login?redirect_url=/post-institute?src=homefooter"
										target="_blank" data-toggle="toggle"
										title="Post Your Institute">Post Your Institute</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://www.freshersworld.com/advertise#brand?src=homefooter"
										target="_blank" data-toggle="toggle"
										title="Email/SMS Campaign">Email/SMS Campaign</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://www.freshersworld.com/advertise#brand?src=homefooter"
										target="_blank" data-toggle="toggle"
										title="Banner Ads Campaign">Banner Ads Campaign</a></li>
									<li class="post-job-link"><a class="footersub"
										href="https://www.freshersworld.com/advertise#brand?src=homefooter"
										target="_blank" data-toggle="toggle"
										title="Placement Assistant">Placement Assistant</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class=" employers-zone-block">
						<div class="employer-head"
							style="text-align: left; text-transform: none; margin-bottom: -5px;">Follow
							us</div>
						<div class="inline-block margin-top-13">
							<a href="https://www.facebook.com/freshersworld" rel="noopener"
								target="_blank" data-toggle="toggle"
								title="Get in Touch with Freshersworld in Facebook"><img
								width="36px" height="36px" alt="facebook"
								src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/facebook.png"></a>
						</div>
						<div class="inline-block margin-left-9 margin-top-13">
							<a href="https://twitter.com/freshersworld" rel="noopener"
								target="_blank" data-toggle="toggle"
								title="Get in Touch with Freshersworld in YouTube"><img
								width="36px" height="36px" alt="twitter"
								src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/twitter.png"></a>
						</div>
						<div class="inline-block margin-left-9 margin-top-13">
							<a href="https://www.linkedin.com/company/freshersworld-com"
								rel="noopener" target="_blank" data-toggle="toggle"
								title="Get in Touch with Freshersworld in LinkedIn"><img
								width="36px" height="36px" alt="linkedin"
								src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/linkedin.png"></a>
						</div>
						<div class="inline-block margin-left-9 margin-top-13">
							<a href="https://www.youtube.com/freshersworld " target="_blank"
								rel="noopener" data-toggle="toggle"
								title="Get in Touch with Freshersworld in +Google"><img
								width="36px" height="36px" alt="youtube"
								src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/youtube.png"></a>
						</div>
						<div class="inline-block margin-left-9 margin-top-13">
							<a href="https://www.instagram.com/freshersworld/"
								target="_blank" data-toggle="toggle" rel="noopener"
								title="Get in Touch with Freshersworld in Twitter"><img
								width="36px" height="36px" alt="instagram"
								src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/instagram.png"></a>
						</div>
						<div class=" employers-zone-block">
							<div class="employer-head"
								style="margin-bottom: -15px; text-align: left; text-transform: none; margin-top: 30px;">Connect
								with us on fingertips</div>
							<div class="footer-google-play">
								<div class="app">
									<a target="_blank" rel="noopener"
										href="https://play.google.com/store/apps/details?id=com.freshersworld.jobs&amp;referrer=utm_source%3Dhomefooter%26utm_medium%3DAppDownload%26utm_campaign%3DWeb"><img
										alt="google-play"
										src="https://d2zxo3dbbqu73w.cloudfront.net/fwasset-live/8e24d8e9/images/google-play.png"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="cont-divider"></div>
				<div
					style="display: flex; justify-content: space-between; margin-bottom: -15px;">
					<div>
						<ul class="lessernote">
							<li>Â© 2006 - 2023 Freshersworld.com</li>
						</ul>
					</div>
					<div>
						<ul class="lesserNotelist">
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/faq" target="_blank"
								data-toggle="toggle" title="FAQs">FAQs</a></li>
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/fraud-awareness"
								target="_blank" data-toggle="toggle" title="FAQs">Fraud
									Alert</a></li>
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/terms-of-use"
								target="_blank" data-toggle="toggle" title="Terms of Use">Terms
									of Use</a></li>
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/privacy" target="_blank"
								data-toggle="toggle" title="Privacy Policy">Privacy Policy</a></li>
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/copyright" target="_blank"
								data-toggle="toggle" title="Copyright">Copyright</a></li>
							<li class="footer-list-link"><a class="last-footer-links"
								href="https://www.freshersworld.com/sitemap" target="_blank"
								data-toggle="toggle" title="Site Map">Site Map</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
