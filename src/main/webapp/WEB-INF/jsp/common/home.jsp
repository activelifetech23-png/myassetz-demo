<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<style>
	
	#planningcard .card{
		
		border:1px solid #ccc;
		padding:30px;
		border-radius: 30px;
		
	}
	
	

	  /* overlay */
	  .sidebar-overlay{
	    display:none;
	    position:fixed;
	    top:0; left:0; right:0; bottom:0;
	    background:rgba(0,0,0,0.4);
	    z-index:1040;
	  }
	  .sidebar-overlay.active{
	    display:block;
	  }

	  /* sidebar panel */
	  .research-sidebar{
	    position:fixed;
	    top:0;
	    right:-420px;
	    width:400px;
	    max-width:90%;
	    height:100%;
	    background:#eef0fb;
	    box-shadow:-3px 0 12px rgba(0,0,0,0.25);
	    z-index:2000;
	    transition:right 0.35s ease;
	    overflow-y:auto;
	  }
	  .research-sidebar.active{
	    right:0;
	  }

	  .research-sidebar .sidebar-header{
	    background:#4527a0;
	    background:linear-gradient(135deg,#3b2f8f,#4a2f8c);
	    color:#fff;
	    padding:20px 25px;
	    font-size:20px;
	    font-weight:600;
	    position:relative;
	  }
	  .research-sidebar .sidebar-header .close-btn{
	    position:absolute;
	    top:14px;
	    right:18px;
	    color:#fff;
	    font-size:22px;
	    opacity:0.9;
	    cursor:pointer;
	    background:none;
	    border:none;
	  }
	  .research-sidebar .sidebar-header .close-btn:hover{
	    opacity:1;
	  }

	  .research-sidebar .sidebar-body{
	    padding:20px 25px 40px 25px;
	  }

	  .research-sidebar .section-title{
	    color:#5a3fd6;
	    font-size:16px;
	    font-weight:600;
	    text-decoration:underline;
	    margin-top:25px;
	    margin-bottom:12px;
	  }
	  .research-sidebar .section-title:first-child{
	    margin-top:0;
	  }

	  .research-sidebar ul{
	    list-style:none;
	    padding:0;
	    margin:0;
	  }
	  .research-sidebar ul li{
	    padding:12px 0;
	    color:#333;
	    font-size:15px;
	    display:flex;
	    align-items:center;
		border-bottom:1px dashed #ccc;
	  }
	  .research-sidebar ul li a{
	    color:#333;
	    text-decoration:none;
	  }
	  .research-sidebar ul li a:hover{
	    color:#4527a0;
	    text-decoration:underline;
	  }
	  .research-sidebar ul li .fa-check-circle{
	    color:#28a745;
	    margin-right:10px;
	    font-size:16px;
	  }
	
	#blogcard .card{
		
		border:1px solid #ccc;
		border-radius:30px;
		padding:30px;
	}
	
	#blogcard .card img{
		
		border-radius:20px;
	}
	
	#financial-card .card{
		
		border:1px solid #ededed;
		box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.05);
		padding: 30px  30px;
		
	}
		
	

	#service-color-code .card{
		padding:32px;
		border-radius:40px;
		background:#f4f4f5;
		box-shadow : 0px -8px 0px 0px rgba(0, 0, 0, 0.0509803922) inset, 0px 4px 0px 0px rgba(255, 255, 255, 0.6) inset, 0px 7.77px 16px 0px rgba(0, 0, 0, 0.0588235294), 0px 3px 3px 0px rgba(0, 0, 0, 0.1019607843);
	}
	
	/* Container holding everything */
	.tarns-piggy-back {
	    position: relative;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    overflow: hidden;
	}

	/* Solar System Orbiting Background Layer */
	.tarns-piggy-back::before {
	    content: '';
	    position: absolute;
	    
	    /* Make it a perfect square centered behind the image */
	    width: 600px;  /* Adjust size as needed to fit your graphic */
	    height: 600px;
	    top: 80%;
	    left: 50%;
	    
	    /* Keep the center fixed at the middle point */
	    transform-origin: center center;
	    
	    background-image: url(../images/about/mockup-bg.webp);
	    background-repeat: no-repeat;
	    background-position: center;
	    background-size: contain;
	    z-index: 1;

	    /* Continuous orbit rotation */
	    animation: orbitRotate 12s linear infinite;
	}

	/* Piggy image stays stationary in the center */
	.tarns-piggy-back > * {
	    position: relative;
	    z-index: 2;
	}

	/* Keyframes that rotate around the exact center */
	@keyframes orbitRotate {
	    from {
	        transform: translate(-50%, -50%) rotate(0deg);
	    }
	    to {
	        transform: translate(-50%, -50%) rotate(360deg);
	    }
	}

.ser-img{
border-radius: 10px;
    padding: 10px;
    background: #eceef3;
       border: 2px solid #65a147;
}
.sip .card{

    border:2px solid #27A840;
	box-shadow: 2px 2px 5px #cdffd7;
    padding: 20px;
    margin-bottom: 15px;
    border-radius: 9px;
}
.funfact-img{
    padding: 32px;
    border-radius: 50%;
    background: linear-gradient(135deg, #003399, #4c8552);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
}
.tes-item {
    /* background: #f2fff2; */
    padding: 40px;
    /* border-radius: 30px; */
    /* border: 1px solid #c1efc1; */
    text-align: center;
    border-radius: 10px;
    background: #fff;
    box-shadow: 0 9px 12px rgba(0, 0, 0, 0.1);
}
/* .down-img {
    width: 60%;
} */
.single-news {
    border: 1px solid #003399;
    border-top:5px solid #4c8552;
	border-radius:30px;
}
@media only screen and (max-width: 991px){
section > .container  {
    padding-top: 22px !important;
    padding-bottom: 30px !important;
}
}
.member {
    box-shadow: 0px 5px 83px 0px rgb(9 29 62 / 15%);
}
.testimonial-img {
    padding: 5px;
    display: inline-block;
    width: auto;
    border-radius: 50%;
    border: 2px dashed green;
}
.card {
    float: left;
    min-height: 0px;
    padding-bottom: 0%;
    position: relative;
    width: 100%;
}
.test-card{
	border: 2px solid blue;
    padding: 20px;
    text-align:center;
}

/******************* Tools and calc **********************/
.read-img{
	background: #003399;
    border-radius: 50%;
    padding: 15px;
}
.tick {
    color: #000000;
    font-size: 9px;
    height: 11px;
    left: 0;
    line-height: 11px;
    margin-left: -24px;
    position: absolute;
    text-align: center;
  	letter-spacing: 0px;
  	width: 50px;
}
.row-eq-height {
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -ms-flexbox;
	  display: flex;
	}
.hide {
    display: none !important;
}
.slider {
    width: 100% !important;
    box-shadow: none !important;
    margin-top: 10px;
}
.slider-track {
    background-color: #eee !important;
    background-image: none !important;
}
.slider-selection {
    background: #45ADD5 !important;
}
.slider-handle {
    opacity: 1 !important;
}

#emi input[type="text"] {
   margin-top: 0px;
	color: #172460;
	font-weight: bold;
	text-align: center;
	float: right;
	width: 100%;
	height: 40px;
	padding: 0px 10px !important;
	letter-spacing: 2px;
	border-radius: 0;
    border: 1px solid #003399;
    font-size: 14px;
}
.calc_div {
	margin: 0px auto;    
	background-color:#fff;
	margin-bottom: 5%;
	margin-top: 2%;
	box-shadow: 0px 0px 10px 5px #ccc;
	border-radius: 10px;
	padding-top: 3%;
}
#emi {
    float: left;
    width: 100%;
    border-right: 1px dotted #aaa;
    background: #fff;
    padding-right:30px;
}
.inside_emi {
    padding: 20px 30px;
}
.small_line {
    border-bottom: 1px dotted #aaa;
} 
#emipaymentsummary h4 {
    color: #333;
    font-size: 14px;
    margin: 0px;
    line-height: 25px;
    font-weight: normal;    
}
.emitotalinterest {
    border-bottom: 1px dotted #aaa;
    padding: 10px;
    text-align: center;
}
#emipaymentsummary {
    float: left;
    width: 100%;
    background: #fff;
}
#emipiechart {
    
    overflow: hidden;
    width: 100%;
    margin-bottom: 10px;
    text-align: center;
}
#emipaymentsummary p {
    font-size: 18px;
    font-weight: bold;
    color: #000;        
}

.steps {
	border-color: rgba(0, 0, 0, 0);
	border-style: none solid;
	border-width: 0 1px;
	margin: 0px 0px 35px !important;
	position: relative;
	width: 100%;
}

.highcharts-title tspan {
	letter-spacing: 0px;
}

.slider-handle{
	background-color: #fff;
    border: 2px solid #45ADD5;
}

.inside_emi .ques{
	font-family: "Poppins", sans-serif;
    float: left;
    font-weight: 500 !important;
    color: #999;
    font-size: 0.84rem;
    padding-bottom: 5px;
}

.ques{
	font-family: "Poppins", sans-serif;
    font-weight: 500 !important;
    color: #999;
    padding-bottom: 5px;
}

.envision_action{
	font-family: "Poppins", sans-serif;
    font-size: 16px;
    text-decoration: underline;
    color: #ffffff;
    text-decoration-color: #f14141;
}

#tenurechoice {
    float: left;
    margin-left: 20px;
}

.toggle {
    background: url(../img/toggle-closed.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
    cursor: pointer;
}
.toggle-open {
    background: url(../img/toggle-open.png) no-repeat scroll 50% 50% rgba(0,0,0,0);
    cursor: pointer;
}
.member .member__info .member__job {
	font-size: 1.3rem;
}

.member_detail {
    font-size: 0.99rem !important;
    line-height: 25px;
}

.member__info_detail {
	padding: 25px 30px !important;
}
.img-thumbnail {
       background-color: #4c8552 !important;
}

.list-group-item .row > * {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .5);
    margin-top: var(--bs-gutter-y);
    font-weight: 700;
}
 .test{
    transition: all 2.75s ease 0s !important;
    
   }
.labeltext {
    font-size: 16px !important;
    background-color:#e9e9ff;
    font-family: 'Montserrat', sans-serif;
}
.textField {
    
    border-color: #444444;
    background-color: #fff;
    color: #000000;
    font-size: 22px;
    font-weight: normal;
    width:100%;
    text-align: center;
        border: 2px solid black;
	border-radius:10px;		
}
.text-theme-colored2 {
    color: #003399 !important;
}
.btn-default.btn-theme-colored2 {
    color: black;
    background-color: #fff;
    border-color: #4c8552;
}
.btn-default.btn-theme-colored2:hover{
  background-color: #003399;
  border-color: #003399;
}

.btn-default.btn-theme-colored2:active{
  background-color: #003399;
  border-color: #003399;
}

.btn-dark.btn-theme-colored {
    color: black;
    background-color: #fff;
    border-color: #4c8552;
}
.btn-dark.btn-theme-colored:hover{
    background-color: #003399;
  border-color: #003399;
}
.menuzord .showhide em {
           	    background:#4c8552;
}
.service-box:after{
   background-color: #4c8552;
     
}
.border-top-theme-colored2-3px{
   border-top:3px solid #003399 !important;
}
.btn-theme-colored2 {
    color: #fff;
    background-color: #003399;
    border-color: #003399;
}
.btn-theme-colored2:hover{
      color: #fff;
    background-color: #4c8552;
    border-color: #4c8552;
}
@media only screen and (max-width: 991px){
.p {
    margin-bottom: 30px !important;
}
}
.owl-theme .owl-dots .owl-dot.active span {
    background: #003399 !important;
}
.banner{
    margin-top:30px !important; 
  }
  @media only screen and (max-width: 991px){
.banner6 {
    margin-top: 120px !important;
}
}


@media only screen and (min-width: 768px)(max-width: 1400px){
.banner {
    margin-top: 50px !important;
}
}
@media only screen and (min-width: 768px)(max-width: 1400px){
.banner2 {
    margin-top:60px !important;
}
}

@media only screen and (max-width: 991px){
.banner {
    margin-top: 80px !important;
}
}
@media only screen and (max-width: 991px){
.banner2 {
    margin-top: 90px !important;
}
}
@media only screen and (max-width: 991px){
.banner5 {
    margin-top: 80px !important;
}
}
@media only screen and (max-width: 991px){
.banner3 {
    margin-top: 80px !important;
}
}
@media only screen and (max-width: 991px)(max-width: 1400px){
.banner4 {
    bottom:10px !important;
}
}
@media only screen and (max-width: 991px){
.p-20 {
    padding: 19px !important;
}
}
@media only screen and (max-width: 991px){
.saving{
    width:117px;
}
.textField{
	width:30%;
}

}
@media only screen and (max-width: 991px){
  .family{
    margin-top:15px !important;
   }
  }
.about{
background-color:#27A840 !important;
color:white !important;
border-color:#27A840 !important;

}
.about:hover{
  background-color:#003399 !important;
  color:white;
  border-color:#003399 !important;
}

@media only screen and (max-width: 991px){
.logo{
    margin-top:30px;
}
}
.city{
  color:#4c8552;
}
.invest{
  border:1px solid #4c8552;
}
.read{
  
   border-radius:30px;
   color:#000;
  
 
  }
 
.service1{
    position:relative
}
.service2{
   position:absolute;
   height:40px;
   width:40px;
   background:#003399;
   border-radius:50px;
   top:20px;
   left:20px;
   
}

#servicelist .card{
  min-height:auto;
  padding:0px;
  text-align:left;
}
#servicelist .card-body{
    border:1px solid #fff4d9;
    border-radius:30px;
    padding:30px;
    background:#fff;
}

#amficard .card{
    
     min-height:auto;
  padding:0px;
  text-align:center;
}

.service-card {
    background: white;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 30px;
    /* box-shadow: 0 0 8px rgb(255 255 255); */
}

.service-card-red .img-red{
	
	box-shadow: 0px 3.44px 5.57px 0px rgba(0, 0, 0, 0.0862745098), 0px 22.91px 37.08px 0px rgba(255, 59, 0, 0.1647058824), 0px 76px 123px 0px rgba(255, 59, 0, 0.0509803922), 0px 5.05px 8.18px 0px rgba(255, 59, 0, 0.1019607843), 0px 16.98px 27.47px 0px rgba(255, 59, 0, 0.0470588235), 0px 56px 83px 0px rgba(255, 59, 0, 0.2509803922), 0px 14px 34px 0px rgba(255, 59, 0, 0.2509803922), 0px 1px 2px 0px rgba(255, 59, 0, 0.4), 0px -3px 0px 0px rgba(0, 0, 0, 0.0588235294) inset, 0px 1px 0px 0px rgba(255, 255, 255, 0.6) inset !important;
	border-radius: 30px;
	
}

.service-card-blue .img-blue{
	
	
	box-shadow: 0px 3.44px 5.57px 0px rgba(0, 0, 0, 0.0862745098), 0px 22.91px 37.08px 0px rgba(0, 103, 208, 0.1647058824), 0px 76px 123px 0px rgba(0, 103, 208, 0.0509803922), 0px 5.05px 8.18px 0px rgba(0, 103, 208, 0.1019607843), 0px 16.98px 27.47px 0px rgba(0, 103, 208, 0.0470588235), 0px 56px 83px 0px rgba(0, 103, 208, 0.2509803922), 0px 14px 34px 0px rgba(0, 103, 208, 0.2509803922), 0px 1px 2px 0px rgba(0, 103, 208, 0.4), 0px -3px 0px 0px rgba(0, 0, 0, 0.0588235294) inset, 0px 1px 0px 0px rgba(255, 255, 255, 0.6) inset !important;
	border-radius: 30px;
	
}

.service-card-orange .img-orange{
	
	
	box-shadow: 0px 3.44px 5.57px 0px rgba(0, 0, 0, 0.0862745098), 0px 22.91px 37.08px 0px rgba(249, 160, 3, 0.1647058824), 0px 76px 123px 0px rgba(249, 160, 3, 0.0509803922), 0px 5.05px 8.18px 0px rgba(249, 160, 3, 0.1019607843), 0px 16.98px 27.47px 0px rgba(249, 160, 3, 0.0470588235), 0px 56px 83px 0px rgba(249, 160, 3, 0.2509803922), 0px 14px 34px 0px rgba(249, 160, 3, 0.2509803922), 0px 1px 2px 0px rgba(249, 160, 3, 0.4), 0px -3px 0px 0px rgba(0, 0, 0, 0.0588235294) inset, 0px 1px 0px 0px rgba(255, 255, 255, 0.6) inset !important;
	border-radius: 30px;
	
}


.service-card-green .img-green{
	
	
	box-shadow: 0px 3.44px 5.57px 0px rgba(0, 0, 0, 0.0862745098), 0px 22.91px 37.08px 0px rgba(43, 167, 62, 0.1647058824), 0px 76px 123px 0px rgba(43, 167, 62, 0.0509803922), 0px 5.05px 8.18px 0px rgba(43, 167, 62.1019607843), 0px 16.98px 27.47px 0px rgba(43, 167, 62, 0.0470588235), 0px 56px 83px 0px rgba(43, 167, 62, 0.2509803922), 0px 14px 34px 0px rgba(43, 167, 62, 0.2509803922), 0px 1px 2px 0px rgba(43, 167, 62, 0.4), 0px -3px 0px 0px rgba(0, 0, 0, 0.0588235294) inset, 0px 1px 0px 0px rgba(255, 255, 255, 0.6) inset !important;
	border-radius: 30px;
	
}



.hero-background {
  background: radial-gradient(circle at 35% 50%, #d4f8e8 0%, #ffffff 60%);
  width: 100%;
  
}

/********************* Tools and calc end ******************/
</style>


<style>
	

	/* =========================================
	   FINANCIAL TOPICS SECTION
	========================================= */

	

	.financial-topic-heading {
	    margin-bottom: 25px;
	}

	.financial-topic-heading > span {
	    display: block;
	    font-size: 10px;
	    font-weight: 700;
	    color: #45a56a;
	    letter-spacing: .5px;
	    margin-bottom: 5px;
	}

	

	.financial-topic-heading p {
	    margin: 5px 0 0;
	    color: #777;
	    font-size: 13px;
	}


	/* =========================================
	   TOPIC CARDS
	========================================= */

	.financial-topic-card {
	    min-height: 220px;
	    margin-bottom: 20px;
	    padding: 22px 20px 18px;
	    text-align: center;
	    border-radius: 7px;
	    border: 1px solid #f1f1f1;
	    transition: all .3s ease;
	}

	.financial-topic-card:hover {
	    transform: translateY(-4px);
	    box-shadow: 0 8px 25px rgba(0, 0, 0, .08);
	}

	.topic-icon {
	    width: 45px;
	    height: 45px;
	    margin: 0 auto 10px;
	    border-radius: 50%;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    font-size: 20px;
	}

	.financial-topic-card h4 {
	    
	    color: #24334d;
	    
	    line-height: 1.3;
	    font-weight: 700;
	}

	.financial-topic-card p {
	    min-height: 52px;
	    margin: 0 auto 8px;
	    max-width: 220px;
	    color: #777;
	    font-size: 14px;
	    line-height: 1.5;
	}

	.financial-topic-card a {
	    font-size: 10px;
	    font-weight: 600;
	    text-decoration: none;
	}

	.financial-topic-card a span {
	    margin-left: 3px;
	}


	/* Card backgrounds */

	.topic-blue {
	    background: #f5f9ff;
	}

	.topic-blue .topic-icon {
	    background: #dcecff;
	    color: #3185df;
	}

	.topic-blue a {
	    color: #3185df;
	}


	.topic-green {
	    background: #f4fbf6;
	}

	.topic-green .topic-icon {
	    background: #dff4e4;
	    color: #3da35b;
	}

	.topic-green a {
	    color: #3da35b;
	}


	.topic-orange {
	    background: #fff9f2;
	}

	.topic-orange .topic-icon {
	    background: #ffe8d3;
	    color: #ed8b36;
	}

	.topic-orange a {
	    color: #ed8b36;
	}


	.topic-purple {
	    background: #faf5ff;
	}

	.topic-purple .topic-icon {
	    background: #efd9ff;
	    color: #a13bd0;
	}

	.topic-purple a {
	    color: #a13bd0;
	}


	.topic-yellow {
	    background: #fffdf3;
	}

	.topic-yellow .topic-icon {
	    background: #ffefbd;
	    color: #e4a900;
	}

	.topic-yellow a {
	    color: #e4a900;
	}


	.topic-blue2 {
	    background: #f3f8ff;
	}

	.topic-blue2 .topic-icon {
	    background: #dcecff;
	    color: #287bd8;
	}

	.topic-blue2 a {
	    color: #287bd8;
	}


	/* =========================================
	   VIEW ALL TOPICS BUTTON
	========================================= */

	.view-all-topic-wrap {
	    margin-top: 0;
	}

	.view-all-topic-btn {
	    padding: 10px 18px;
	    border: 0;
	    border-radius: 3px;
	    background: #239b4b;
	    color: #fff;
	    font-size: 11px;
	    font-weight: 600;
	    transition: all .3s ease;
	}

	.view-all-topic-btn:hover,
	.view-all-topic-btn:focus {
	    background: #18833c;
	    color: #fff;
	    outline: none;
	}

	.view-all-topic-btn span {
	    margin-left: 5px;
	}


	/* =========================================
	   LEFT SIDEBAR
	========================================= */

	.financial-sidebar {
	    position: fixed;
	    top: 0;
	    left: 0;

	    width: 330px;
	    height: 100%;

	    background: #fff;

	    z-index: 9999;

	    overflow-y: auto;

	    transform: translateX(-100%);
	    transition: transform .35s ease;

	    box-shadow: 5px 0 25px rgba(0, 0, 0, .15);
	}


	/* Sidebar open */

	.financial-sidebar.active {
	    transform: translateX(0);
	}


	/* =========================================
	   SIDEBAR HEADER
	========================================= */

	.financial-sidebar-header {
	    min-height: 58px;
	    padding: 14px 15px;

	    display: flex;
	    align-items: center;
	    justify-content: space-between;

	    background: #fff;

	    border-bottom: 1px solid #e5e5e5;
	}

	.financial-sidebar-header h3 {
	    margin: 0;
	    color: #ef9f00;
	    font-size: 16px;
	    font-weight: 600;
	}

	.financial-sidebar-close {
	    width: 30px;
	    height: 30px;

	    border: 0;
	    background: transparent;

	    color: #555;

	    font-size: 27px;
	    line-height: 25px;

	    cursor: pointer;
	}

	.financial-sidebar-close:hover {
	    color: #e49a00;
	}


	/* =========================================
	   SIDEBAR CONTENT
	========================================= */

	.financial-sidebar-content {
	    padding: 5px 0 20px;
	}

	.menu-section-title {
	    padding: 13px 14px 6px;

	    color: #999;

	    font-size: 9px;
	    font-weight: 700;
	    letter-spacing: .5px;
	}


	.financial-menu-item {
	    min-height: 42px;

	    padding: 10px 14px;

	    display: flex;
	    align-items: center;

	    border-bottom: 1px solid #f1f1f1;

	    color: #333;

	    font-size: 11px;

	    text-decoration: none;

	    transition: all .2s ease;
	}

	.financial-menu-item:hover {
	    background: #f7f7f7;
	    color: #e49a00;
	    text-decoration: none;
	}

	.financial-menu-item > .glyphicon {
	    width: 22px;
	    margin-right: 5px;

	    color: #777;
	    font-size: 12px;
	}

	.financial-menu-item:hover > .glyphicon {
	    color: #e49a00;
	}

	.financial-menu-item span:nth-child(2) {
	    flex: 1;
	}

	.menu-arrow {
	    margin-left: 8px;
	    color: #777;
	    font-size: 17px;
	}


	/* =========================================
	   OVERLAY
	========================================= */

	.financial-sidebar-overlay {
	    position: fixed;

	    top: 0;
	    left: 0;

	    width: 100%;
	    height: 100%;

	    background: rgba(0, 0, 0, .35);

	    z-index: 9998;

	    opacity: 0;
	    visibility: hidden;

	    transition: all .35s ease;
	}

	.financial-sidebar-overlay.active {
	    opacity: 1;
	    visibility: visible;
	}


	/* =========================================
	   MOBILE
	========================================= */

	@media (max-width: 767px) {

	    .financial-topics-section {
	        padding: 35px 0;
	    }

	    .financial-topic-heading h2 {
	        font-size: 23px;
	    }

	    .financial-topic-card {
	        min-height: auto;
	        margin-bottom: 15px;
	    }

	    .financial-sidebar {
	        width: 290px;
	    }

	}

    
    .testimonial-section {
        position: relative;
        overflow: hidden;
        padding: 48px 68px 58px;
        border-radius: 24px;
      
        color:#000;
    }

    
    .testimonial-section:before,
    .testimonial-section:after {
        content: "";
        position: absolute;
        border-radius: 50%;
        background: rgba(242, 242, 243, 0.45);
        z-index: 0;
    }

    .testimonial-section:before {
        width: 420px;
        height: 420px;
        left: 22%;
        top: 10px;
    }

    .testimonial-section:after {
        width: 360px;
        height: 360px;
        right: -75px;
        bottom: -130px;
    }

    .testimonial-content {
        position: relative;
        z-index: 1;
    }

    .section-label {
        margin-bottom: 28px;
        font-size: 13px;
        font-weight: 600;
        letter-spacing: 4px;
        color:#000;
    }

    .section-label:before {
        content: "";
        display: inline-block;
        width: 28px;
        height: 1px;
        margin: 0 18px 4px 0;
        background: #fff;
    }

    .testimonial-heading {
        margin: 0;
        font-size: 49px;
        line-height: 1.55;
        font-weight: 500;
        color:#000;
    }

    .testimonial-intro {
        margin: 95px 0 0;
        font-size: 15px;
        line-height: 1.85;
        color: #000;
    }

    .testimonial-card {
        position: relative;
        min-height: 280px;
        margin-top: 48px;
        padding: 28px 24px;
        border: 1px solid rgba(130, 121, 121, 0.28);
        border-radius: 22px;
       
    }

    .rating {
        margin-bottom: 30px;
        font-size: 18px;
        letter-spacing: 3px;
        color: #ffd137;
    }

    .testimonial-text {
        min-height: 75px;
        margin-bottom: 28px;
        font-size: 14px;
        line-height: 1.9;
        color: #000;
    }

    .client-name {
        margin: 0 0 8px;
        font-size: 18px;
        font-weight: 500;
        color:#0662D2;
    }

    .client-role {
        margin: 0;
        font-size: 14px;
        color: rgba(255, 255, 255, 0.68);
    }

    .quote-icon {
        position: absolute;
        right: 25px;
        bottom: 18px;
        font-family: Georgia, serif;
        font-size: 72px;
        line-height: 1;
        color: #2BA73E;
    }

    @media (max-width: 767px) {
        .testimonial-section {
            padding: 35px 25px;
            border-radius: 15px;
        }

        .testimonial-heading {
            font-size: 34px;
            line-height: 1.35;
        }

        .testimonial-intro {
            margin-top: 25px;
        }

        .testimonial-card {
            margin-top: 25px;
        }
    }
	
	.financilal-link ul li{
		
		display:inline-block;
		margin:5px 5px;
		padding:5px 10px;
		background:#f5f5f5;
		border-radius:30px;
		color:#e93154;
	}
	

	
	
	
	
	.section-title {
	    font-size: 32px;
	    font-weight: 600;
	    color: #1f2430;
	    margin: 0;
	  }
	  .btn-outline-navy {
	    background: #fff;
	    color: #1a2b6d;
	    border: 1px solid #1a2b6d;
	    border-radius: 6px;
	    padding: 10px 20px;
	    font-weight: 500;
	  }
	  .btn-outline-navy:hover {
	    background: #1a2b6d;
	    color: #fff;
	  }
	  .header-row {
	    margin-bottom: 30px;
	  }
	  .service-card {
	    border-radius: 14px;
	    padding: 24px;
	    margin-bottom: 24px;
	    min-height: 260px;
	  }
	  .card-blue    { background: #dbe9fb; }
	  .card-red     { background: #fbe2e0; }
	  .card-orange  { background: #fbecd2; }
	  .card-purple  { background: #f0e2f7; }
	  .card-green   { background: #e0f3e4; }
	  .card-teal    { background: #d9f0f7; }

	  .card-icon {
	    width: 60px;
	    height: 60px;
	    margin-bottom: 12px;
	  }
	  .card-title {
	    font-size: 19px;
	    font-weight: 600;
	    color: #1f2430;
	    display: inline-block;
	    vertical-align: middle;
	  }
	  .card-header-row {
	    display: flex;
	    align-items: center;
	    gap: 14px;
	    margin-bottom: 10px;
	  }
	  .card-header-row img {
	    flex-shrink: 0;
	  }
	  .card-desc {
	    color: #555;
	    font-size: 15px;
	    line-height: 1.5;
	    margin-bottom: 18px;
	  }
	  .card-footer {
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    font-size: 14px;
	    font-weight: 500;
	  }
	  .card-footer a {
	    color: #1a2b6d;
	    text-decoration: none;
	  }
	  .card-footer a:hover {
	    text-decoration: underline;
	  }

	  /* ---- Services Sidebar ---- */
	  .services-overlay {
	    display: none;
	    position: fixed;
	    top: 0; left: 0; right: 0; bottom: 0;
	    background: rgba(0,0,0,0.35);
	    z-index: 1040;
	  }
	  .services-overlay.open { display: block; }

	  .services-sidebar {
	    position: fixed;
	    top: 0;
	    left: -420px;
	    width: 380px;
	    max-width: 90%;
	    height: 100%;
	    background: #fff;
	    z-index: 9999;
	    box-shadow: 4px 0 18px rgba(0,0,0,0.15);
	    transition: left 0.3s ease;
	    border-top: 3px solid #2f6fed;
	    overflow-y: auto;
	  }
	  .services-sidebar.open {
	    left: 0;
	  }
	  .services-sidebar-header {
	    display: flex;
	    align-items: center;
	    justify-content: space-between;
	    padding: 20px 24px;
	    border-bottom: 1px solid #eee;
	  }
	  .services-sidebar-header h3 {
	    color: #f2a71b;
	    font-weight: 700;
	    margin: 0;
	    font-size: 22px;
	  }
	  .services-sidebar-header .close-btn {
	    background: none;
	    border: none;
	    font-size: 20px;
	    color: #333;
	    cursor: pointer;
	    line-height: 1;
	  }
	  .services-list {
	    list-style: none;
	    margin: 0;
	    padding: 0;
	  }
	  .services-list li {
	    border-bottom: 1px solid #f0f0f0;
	  }
	  .services-list li a {
	    display: flex;
	    align-items: center;
	    padding: 16px 24px;
	    text-decoration: none;
	    
	    font-size: 12px;
	  }
	  .services-list li a:hover {
	    background: #fafafa;
	    text-decoration: none;
	  }
	  .services-list .svc-icon {
	    width: 22px;
	    margin-right: 16px;
	    color: #555;
	    flex-shrink: 0;
	    text-align: center;
	  }
	  .services-list .svc-text {
	    flex: 1;
	    line-height: 1.4;
	  }
	  .services-list .svc-arrow {
	    color: #999;
	    margin-left: 10px;
	    flex-shrink: 0;
	  }
	  	
</style>


<script>
  $(function () {
    function openSidebar() {
      $('#servicesSidebar').addClass('open');
      $('#servicesOverlay').addClass('open');
      $('body').css('overflow', 'hidden');
    }
    function closeSidebar() {
      $('#servicesSidebar').removeClass('open');
      $('#servicesOverlay').removeClass('open');
      $('body').css('overflow', '');
    }
    $('#openServicesBtn').on('click', openSidebar);
    $('#closeServicesBtn').on('click', closeSidebar);
    $('#servicesOverlay').on('click', closeSidebar);
  });
</script>




<script>
  window.addEventListener("DOMContentLoaded", () => {
    function animateCounter(id, end, duration = 1500) {
      let start = 0;
      let element = document.getElementById(id);
      let increment = end / (duration / 16);

      function update() {
        start += increment;
        if (start < end) {
          element.innerText = Math.floor(start);
          requestAnimationFrame(update);
        } else {
          element.innerText = end + "+";
        }
      }
      update();
    }

    animateCounter("counter1", 600);
    animateCounter("counter2", 70);
  });
  
  
  $(document).ready(function () {

      // Open sidebar
      $("#viewAllTopics").click(function () {

          $("#financialSidebar").addClass("active");
          $("#financialSidebarOverlay").addClass("active");

          // Prevent background page scrolling
          $("body").css("overflow", "hidden");
      });


      // Close sidebar
      $("#closeFinancialSidebar, #financialSidebarOverlay").click(function () {

          $("#financialSidebar").removeClass("active");
          $("#financialSidebarOverlay").removeClass("active");

          // Enable page scrolling
          $("body").css("overflow", "");
      });

  });
  
  
</script>





<script src="/js/infiniteslidev2.js"></script>
<script>
$(document).ready(function(){

	 $('.slide_vertical').infiniteslide({
         direction: 'up',
         pauseonhover: false
     });
 
});
</script>
<script>
var sip_amount = "";
var interest_rate = "";
var period = "";
var accountMap = "";

var invested_amount = 0;
var growth_value = 0;
var maturity_amount = 0;

$(document).ready(function(){

	sip_amount = '${sip_amount}';
	interest_rate = '${interest_rate}';
	period = '${period}';
	
	sipAmount = parseInt(sip_amount);
	rateofReturn = parseFloat(interest_rate);
	sipMonth = parseInt(period);
	
	$('#sipamount').val(numbersWithComma(sipAmount));
	$('#sipinterest').val(rateofReturn);
	$('#sipmonth').val(sipMonth);
	
	accountMap = '${accountMap}';	
	
	$("#amount_slider").slider({
        min: 0,
        max: 100000,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: sipAmount
	}).on("slideStop", function(slideEvt) {
		$("#sipamount").val(numbersWithComma(slideEvt.value));
		calculateSIP();
	});
	
	$("#month_slider").slider({
        min: 0,
        max: 450,
        tooltip: "show",
        step: 1,
        precision: 0,
        value: sipMonth
	}).on("slideStop", function(slideEvt) {
		$("#sipmonth").val(slideEvt.value);
		calculateSIP();
	});
	
	$("#interest_slider").slider({
        min: 5,
        max: 20,
        tooltip: "show",
        step: 0.1,
        precision: 1,
        value: rateofReturn
	}).on("slideStop", function(slideEvt) {
		var term = slideEvt.value;
		var val = $('input:radio[name=term]:checked').val();
		if(val == "month")
		{
			term = term * 12;
		}
		$( "#sipinterest" ).val(term);
		calculateSIP();
	});
	
	$('input.number').change(function() {
		$(this).val(function(index, value) {
			value = value.replace(/,/g,'');
		    return numbersWithComma(value);
		});
	});

	calculateSIP();
	
	$('#datepicker').datepicker({
        changeYear: true,
        showButtonPanel: true,
        disableTouchKeyboard:true,
        dateFormat: 'yy',
        onClose: function(dateText, inst) { 
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
            $(this).datepicker('setDate', new Date(year));
            initiateChart(year, 0);
        }
    });
    
    $("#datepicker").focus(function () {
        $(".ui-datepicker-month").hide();
    });
    
	var currentYear = new Date().getFullYear();
	$( "#datepicker" ).val(currentYear);
});


function amountChange()
{
	var amount = $('#sipamount').val();
	amount = amount.replace(/,/g,'');
	$( "#amount_slider" ).slider("setValue",amount);
	calculateSIP();
}
function interestChange()
{
	var interest = $('#sipinterest').val();
	$( "#interest_slider" ).slider("setValue",interest);
	calculateSIP();
}
function monthChange()
{
	var month = $('#sipmonth').val();
	$( "#month_slider" ).slider("setValue", month);
	calculateSIP();
}
function numbersWithComma(x) 
{
	x = x.toString();
	var afterPoint = '';
	if(x.indexOf('.') > 0)
	   afterPoint = x.substring(x.indexOf('.'),x.length);
	x = Math.floor(x);
	x = x.toString();
	var lastThree = x.substring(x.length-3);
	var otherNumbers = x.substring(0,x.length-3);
	if(otherNumbers != '')
	    lastThree = ',' + lastThree;
	var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree + afterPoint;
	return res;
}

function calculateSIP()
{
    var sipAmount = $('#sipamount').val();
    var rateofReturn = $('#sipinterest').val();
    var sipMonth = $('#sipmonth').val();
    
    sipAmount = sipAmount.replace(/,/g, "");
    
    sipAmount = parseInt(sipAmount);
    sipMonth = parseInt(sipMonth);
    rateofReturn = parseFloat(rateofReturn,10);
    
    invested_amount = 0;
    growth_value = 0;
    maturity_amount = 0;
    
    $.ajaxSetup({async:false});
    $.post("/tools-and-calculators/getSIPCalcResult", 
        {
            sip_amount : "" + sipAmount + "",
            interest_rate : "" + rateofReturn + "",
            period : "" + sipMonth + ""
        }, 
        function(data)
        {
            var result = $.trim(data);
            var obj = jQuery.parseJSON(result);
            
            if(obj.status == 400)
            {
                alert(obj.msg);
                return false;
            }
            
            invested_amount = obj.invested_amount;
            growth_value = obj.growth_value;
            maturity_amount = obj.maturity_amount;
        },
    'text');
    
    $('#res_amount_invest').html(numbersWithComma(invested_amount));
    $('#res_total_interest').html(numbersWithComma(growth_value));
    $('#res_total_amount').html(numbersWithComma(maturity_amount));

    renderChart(invested_amount, growth_value);
    var output = `
    <div class="row sip text-center my-3">

        <div class="col-md-4 mb-3">
            <div class="card p-3 shadow-sm">
                <div class="card-body">
               		<p class="mb-1 text-black">Monthly SIP</p>
               		<h4 class="text-theme-coloured2 mb-0">\${numbersWithComma(sipAmount)}</h4>
                  </div>
               </div>
           </div>

        <div class="col-md-4 mb-3">
            <div class="card p-3 shadow-sm">
                <div class="card-body">
             			<p class="mb-1 text-black">Duration</p>
                  		<h4 class="text-theme-coloured2 mb-0">\${sipMonth / 12} Years</h4>
                    </div>
                </div>
            </div>
         <div class="col-md-4 mb-3">
            <div class="card p-3 shadow-sm">
                <div class="card-body">
                		<p class="mb-1 text-black">Maturity Amount</p>
                        <h4 class="text-theme-coloured2 mb-0">\${numbersWithComma(maturity_amount)}/-</h4>
                    </div>
                </div>
            </div>

    </div>
`;

    $('.outputtext').html(output);

    var d = new Date();
    var current_year = d.getFullYear(); 
    var current_month = d.getMonth();
    barChartValuesPrepare(current_year,current_month,sipAmount,rateofReturn,sipMonth);
}

function renderChart(amount, total_interest) {
    amount = parseFloat(amount) || 0;
    total_interest = parseFloat(total_interest) || 0;

    $('#emipiechart').highcharts({
        colors: ['#F9A003', '#27A840'],

		chart: {
		    type: 'pie',
		    backgroundColor: '#fff',
		    height: 250
		  
		},


        title: {
            text: ''
        },

        credits: {
            enabled: false
        },

        tooltip: {
            pointFormat: '<b>{point.percentage:.1f}%</b>'
        },

		legend: {
		    enabled: true,
		    layout: 'horizontal',
		    align: 'center',
		    verticalAlign: 'bottom',
		    y: 0,

		    borderWidth: 1,
		    borderColor: '#999999',
		    borderRadius: 0,
		    padding: 12,

		    symbolWidth: 15,
		    symbolHeight: 15,
		    symbolRadius: 8, // round legend dots

		    itemDistance: 10,
		    itemStyle: {
		        color: '#202020',
		        fontSize: '14px',
		        fontWeight: '600'
		    }
		},

        plotOptions: {
            pie: {
                innerSize: '62%',       // makes it a doughnut
                size: '100%',
                center: ['50%', '50%'],
                borderWidth: 3,
                borderColor: '#f9f9f9',
                allowPointSelect: false,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },

        series: [{
            type: 'pie',
            data: [
                {
                    name: 'Invested Amount',
                    y: amount
                },
                {
                    name: 'Total Earnings',
                    y: total_interest
                }
            ]
        }]
    });
}
function downloadResult()
{
	sipAmount = numbersWithComma(sipAmount);
	invested_amount = numbersWithComma(invested_amount);
	growth_value = numbersWithComma(growth_value);
	maturity_amount = numbersWithComma(maturity_amount);

	
	var calc_url = window.location.href;

    var param = "?sipamount="+sipAmount+"&sipinterest="+rateofReturn+"&sipmonth="+sipMonth;
	param += "&invest_amount="+invested_amount+"&interest_total="+growth_value+"&final_amount="+maturity_amount+"&url="+calc_url;
	
	var url = '/tools-and-calculators/downloadSIPCalcResult'+param;
	window.location = url;
	
       setTimeout(function(){
    	   swal({title:"",text:"Thanks for the Download."});
   	},1000);
}


function renderBarChart(yearArr,principalArr,interestArr,balanceArr)
{

	
	var options = {
			
	          series: [{
	          name: 'Total SIP Value',
	          data: balanceArr
	        }, {
	          name: 'SIP Investment',
	          data: principalArr
	        }],
	          chart: {
	          height: 400,
	          type: 'area',
	          toolbar: {
	              show: false
	            }
	        },
	        colors: ['#4c8552','#003399'],
	        dataLabels: {
	          enabled: false
	        },
	        stroke: {
	          curve: 'smooth'
	        },
	        xaxis: {
	          categories: yearArr
	        },
	        yaxis: {
	        	  labels: {
	        	    formatter: function (value) {
	        	      return numbersWithComma(value);
	        	    }
	        	  },
	        	},
	        grid: {
	        	  row: {
	        	      colors: ['#e5e5e5', 'transparent'],
	        	      opacity: 0.2
	        	  }, 
	        	  strokeDashArray: 7,
	        	  column: {
	        	      colors: ['#f8f8f8', 'transparent'],
	        	  }, 
	        	  xaxis: {
	        	    lines: {
	        	      show: true
	        	    }
	        	  }
	        	},
	        	/* tooltip: {
	        		  x: {
	        		    format: 'dd MMM',
	        		    formatter: undefined,
	        		  },
	        		  y: {
	        		    formatter: (value) => { return numbersWithComma(value) },
	        		  },              
	        		} */
        		tooltip: {
        			  enabled: false
        			}
	        };

	        var chart = new ApexCharts(document.querySelector("#emibarchart"), options);
	        chart.render();
	        window.dispatchEvent(new Event('resize'))
	        
	/*$('#emibarchart').highcharts({
        chart: {
            zoomType: 'xy',
            spacingTop: 40
        },
        title: {
            text: 'Systematic Investment Plan (SIP) Growth Chart',
            align: 'center',
            y: -10,
            style: {
				fontSize: '13px',
				fontWeight: 600
            }
        },
        legend: {
            borderWidth: 1,
            borderRadius: 5,
        },
        credits: {
            enabled: false
        },
        xAxis: [{
        	 title: {
                 text: 'Year'
             },
            categories: yearArr,
			tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }],
        yAxis: [{ // Primary yAxis
            title: {
                text: 'Total SIP Value'
            },
			 labels: {
                //format: '$ {value}'
            },
			min: 0,
		   	tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }, { // Secondary yAxis
            title: {
                text: 'SIP Investment'
            },
            labels: {
                //format: '$ {value}'
            },
            opposite: true,
			min: 0,
			tickColor: 'black',
	        tickLength: 5,
	        tickWidth: 1,
	        tickPosition: 'outside',
	        lineWidth:1,
	      	lineColor:'black'
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'horizontal',
            align: 'right',
            verticalAlign: 'top',
            floating: true,
            backgroundColor: '#FFFFFF',
			x:0,
			itemStyle: {
		        color: '#000000',
		        fontWeight: 'bold',
		        fontSize: '12px'
		    }
        },
		plotOptions: {
            column: {
                stacking: 'normal'
            }
        },
        series: [{
            name: 'SIP Investment',
            color: '#DA9728',
            type: 'spline',
            yAxis: 1,
            data: principalArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:1,
        	legendIndex:0

        },
		{
            name: 'Growth',
            color: '#054F80',
            type: 'spline',
            yAxis: 1,
            data: interestArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:0,
        	legendIndex:1

        }, 
		{
            name: 'Total SIP Value',
            color: '#e41d23',
            type: 'spline',
            data: balanceArr,
            tooltip: {
                valuePrefix: 'Rs. '
            },
			index:2,
        	legendIndex:2
        }]
    });*/
}

function barChartValuesPrepare(current_year,current_month,sipAmount,rateofReturn,sipMonth)
{
	var years = sipMonth / 12;
	var mon = 12;
	var yearArr = new Array();
	var principalArr = new Array();
	var interestArr = new Array();
	var balanceArr = new Array();

	for(var k=1;k<=years;k++)
	{
		var value1 = (rateofReturn / 100) / 12;
	    var value3 = 1 + value1;
		var value4 = Math.pow((value3), (mon + 1));
	    var amount1 = (value4 - 1);
	    var amount2 = amount1 / value1;
	    var final_amount = (sipAmount * amount2) - sipAmount;
	    final_amount = Math.round(final_amount);
	    var invest_amount = sipAmount * mon;
	    var interest_total = final_amount - invest_amount;
	    yearArr.push(current_year);
		principalArr.push(invest_amount);
		interestArr.push(interest_total);
		balanceArr.push(final_amount);
		current_year = current_year + 1;
		mon = mon + 12;
	}
	renderBarChart(yearArr,principalArr,interestArr,balanceArr);
}


$(document).ready(function(){
   function openSidebar(){
     $('#researchSidebar').addClass('active');
     $('#sidebarOverlay').addClass('active');
   }
   function closeSidebar(){
     $('#researchSidebar').removeClass('active');
     $('#sidebarOverlay').removeClass('active');
   }
   $('#openSidebarBtn').on('click', openSidebar);
   $('#closeSidebarBtn').on('click', closeSidebar);
   $('#sidebarOverlay').on('click', closeSidebar);
 });

</script>

<div class="sidebar-overlay" id="sidebarOverlay"></div>

<!-- sidebar -->
<!--<div class="research-sidebar" id="researchSidebar">
  <div class="sidebar-header">
    Financial planning services
    <button type="button" class="close-btn" id="closeSidebarBtn">&times;</button>
  </div>
  <div class="sidebar-body">

    <div class="section-title">Performance Comparison</div>
    <ul>
      <li><i class="fa fa-check-circle"></i><a href="/insurance-planning">Insurance planning</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/multiple-goals-planning-sebi">Multiple Goals planning (SEBI)</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/retirement-planning-sebi">Retirement planning (SEBI)</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/retirement-goal-tracker-sebi">Retirement goal tracker (SEBI)</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/goal-planning-with-variable-aa-sebi">Goal planning with variable AA (SEBI)</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/your-investment-goal-tracker-sebi">Your investment goal tracker (SEBI)</a></li>
      <li><i class="fa fa-check-circle"></i><a href="/cost-of-delay-in-savings-and-investments">Cost of delay in savings and investments (SEBI)</a></li>
	  <li><i class="fa fa-check-circle"></i><a href="/portfolio-performance-tracker">Portfolio performance tracker - Self</a></li>
    </ul>
-->
    <!--<div class="section-title">SIP Returns</div>
    <ul>
      <li><i class="fa fa-check-circle"></i><a href="#">Top Performing SIP Funds</a></li>
      <li><i class="fa fa-check-circle"></i><a href="#">SIP with Annual Increase</a></li>
      <li><i class="fa fa-check-circle"></i><a href="#">Mutual Fund SIP Return Calculator</a></li>
    </ul>

    <div class="section-title">Lumpsum Return</div>
    <ul>
      <li><i class="fa fa-check-circle"></i><a href="#">Top Performing Lumpsum Funds</a></li>
      <li><i class="fa fa-check-circle"></i><a href="#">Lumpsum Returns Calculator</a></li>
    </ul>

  </div>
--></div>

  <!-- Start main-content -->
  <!--<div class="main-content">

     Section: home 
    <section id="home" class="divider">
      <div class="container-fluid p-0">

         START REVOLUTION SLIDER 5.0.7 
        <div id="rev_slider_home_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="news-gallery34" style="margin:0px auto;background-color:#ffffff;padding:0px;margin-top:0px;margin-bottom:0px;">
           START REVOLUTION SLIDER 5.0.7 fullwidth mode 
          <div id="rev_slider_home" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
            <ul>
               SLIDE 1 
              <li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="/images/bg/bann1.jpg" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Make an Impact">
                 MAIN IMAGE 
                <img src="/images/bg/bann1.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                 LAYERS 
                 LAYER NR. 1 
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0" 
                  id="slide-1-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="1000" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.6);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                 LAYER NR. 2 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner4" 
                  id="slide-1-layer-2" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['120','100','70','90']" 
                  data-fontsize="['35','35','35','35']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-width="['850','850','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 6; min-width: 600px; max-width: 600px; white-space: normal;">There are as many types of  mutual funds as each of your financial goals.
                </div>
                 LAYER NR. 3 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner3 " 
                  id="slide-1-layer-3" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['280','220','180','180']" 
                  data-fontsize="['18','18','16','13']"
                  data-lineheight="['30','30','28','25']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['850','850','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap; ">Your individual financial goals can be achieved by the <br>  appropriate mutual fund investment. We help you choose the <br> best  mutual funds that  will help  you reach your goals.  
                </div>
                 LAYER NR. 4 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner " 
                  id="slide-1-layer-4" 
                  data-x="['left','left','left','left']" data-hoffset="['53','53','53','30']" 
                  data-y="['top','top','top','top']" data-voffset="['360','290','260','260']" 
                  data-fontsize="['18','18','16','16']"
                  data-lineheight="['30','30','30','30']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap; margin-top:0px;"><a href="/mutual-fund" class="btn btn-default btn-theme-colored2 btn-xl">Read More</a>
                </div>
              </li>

               SLIDE 2 
              <li data-index="rs-2" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="/images/bg/slider2.jpg" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Make an Impact">
                 MAIN IMAGE 
                <img src="/images/bg/slider2.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                 LAYERS 
                 LAYER NR. 1 
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0" 
                  id="slide-2-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="1000" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.6);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                 LAYER NR. 2 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0" 
                  id="slide-2-layer-2" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['120','100','70','90']" 
                  data-fontsize="['28','24','24','24']"
                  data-lineheight="['33','30','30','30']"
                  data-fontweight="['600','600','600','600']"
                  data-textalign="['center','center','center','center']"
                  data-width="none"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap;">
                </div>
                 LAYER NR. 3 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner4" 
                  id="slide-2-layer-3" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['120','100','70','90']" 
                  data-fontsize="['35','35','35','35']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-width="['850','850','600','420']"
                  data-textalign="['left','left','left','left']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 6; min-width: 600px; max-width: 600px; white-space: normal; ">The financial security of your loved ones should not be as unpredictable as life. 
                </div>
                 LAYER NR. 4 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner2 " 
                  id="slide-2-layer-4" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['280','220','180','180']" 
                  data-fontsize="['18','18','16','13']"
                  data-lineheight="['30','30','28','25']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['850','850','600','420']"
                  data-textalign="['left','left','left','left']"
                  data-width="['850','850','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap; margin-top:0px;">Create a cocoon of safety around the dreams of your dependent <br> loved onesLet us help you  choose insurance plans that <br> will buy you  peace of mind  and your family the <br> financial security they deserve. 
                </div>
                 LAYER NR. 5 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner6 " 
                  id="slide-2-layer-5" 
                  data-x="['left','left','left','left']" data-hoffset="['53','53','53','30']" 
                  data-y="['top','top','top','top']" data-voffset="['360','290','260','260']" 
                  data-fontsize="['18','18','16','16']"
                  data-lineheight="['30','30','30','30']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['700','650','600','420']"
                  data-width="none"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap; margin-top:50px;"><a href="/aboutus" class="btn btn-dark btn-theme-colored btn-xl">Read More</a>
                </div>
              </li>

               SLIDE 3 
              <li data-index="rs-3" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="/images/bg/slider3.jpg" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Make an Impact">
                 MAIN IMAGE 
                <img src="/images/bg/slider3.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                 LAYERS 
                 LAYER NR. 1 
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0" 
                  id="slide-3-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="1000" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.6);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0" 
                  id="slide-1-layer-2" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['120','100','70','90']" 
                  data-fontsize="['35','35','35','35']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-width="['850','850','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 6; min-width: 600px; max-width: 600px; white-space: normal; bottom:0px;">Start your financial journey with a plan that will ensure you reach it.
                </div>
                 LAYER NR. 3 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner5 " 
                  id="slide-1-layer-3" 
                  data-x="['left','left','left','left']" data-hoffset="['50','50','50','30']" 
                  data-y="['top','top','top','top']" data-voffset="['280','220','180','180']" 
                  data-fontsize="['18','18','16','13']"
                  data-lineheight="['30','30','28','25']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['850','850','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap;">Financial goals need a robust investment plan. We create <br> financial plans  to align with your individual goals and profile to <br> propel you on your  journey to achieving them. 
                </div>
                 LAYER NR. 4 
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0 banner " 
                  id="slide-1-layer-4" 
                  data-x="['left','left','left','left']" data-hoffset="['53','53','53','30']" 
                  data-y="['top','top','top','top']" data-voffset="['360','290','260','260']" 
                  data-fontsize="['18','18','16','16']"
                  data-lineheight="['30','30','30','30']"
                  data-fontweight="['600','600','600','600']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 7; white-space: nowrap;"><a href="/contactus" class="btn btn-default btn-theme-colored2 btn-xl">Read More</a>
                </div>
                 LAYER NR. 4 
                <div class="tp-caption rs-parallaxlevel-0" 
                  id="slide-3-layer-5" 
                  data-x="['center','center','center','center']" data-hoffset="['310','33','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['360','290','260','260']" 
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;" 
                  data-mask_out="x:0;y:0;" 
                  data-start="1000" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  data-responsive="off"
                  style="z-index: 8; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">
                </div>
              </li>
            </ul>
            <div class="tp-bannertimer tp-bottom" style="height: 5px; background-color: rgba(166, 216, 236, 1.00);"></div>
          </div>
        </div>
-->
        <!-- END REVOLUTION SLIDER -->
        <script type="text/javascript">
          var tpj=jQuery;         
          var revapi34;
          tpj(document).ready(function() {
            if(tpj("#rev_slider_home").revolution == undefined){
              revslider_showDoubleJqueryError("#rev_slider_home");
            }else{
              revapi34 = tpj("#rev_slider_home").show().revolution({
                sliderType:"standard",
                jsFileLocation:"js/revolution-slider/js/",
                sliderLayout:"fullscreen",
                dottedOverlay:"none",
                delay:9000,
                navigation: {
                  keyboardNavigation:"on",
                  keyboard_direction: "horizontal",
                  mouseScrollNavigation:"off",
                  onHoverStop:"on",
                  touch:{
                    touchenabled:"on",
                    swipe_threshold: 75,
                    swipe_min_touches: 1,
                    swipe_direction: "horizontal",
                    drag_block_vertical: false
                  }
                  ,
                  arrows: {
                    style:"zeus",
                    enable:true,
                    hide_onmobile:true,
                    hide_under:600,
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                    left: {
                      h_align:"left",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    },
                    right: {
                      h_align:"right",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    }
                  },
                  bullets: {
                    enable:true,
                    hide_onmobile:true,
                    hide_under:600,
                    style:"metis",
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    direction:"horizontal",
                    h_align:"center",
                    v_align:"bottom",
                    h_offset:0,
                    v_offset:30,
                    space:5,
                    tmp:'<span class="tp-bullet-img-wrap"><span class="tp-bullet-image"></span></span>'
                  }
                },
                viewPort: {
                  enable:true,
                  outof:"pause",
                  visible_area:"80%"
                },
                responsiveLevels:[1240,1024,778,480],
                gridwidth:[1240,1024,778,480],
                gridheight:[600,550,500,450],
                lazyType:"none",
                parallax: {
                  type:"scroll",
                  origo:"enterpoint",
                  speed:400,
                  levels:[5,10,15,20,25,30,35,40,45,50],
                },
                shadow:0,
                spinner:"off",
                stopLoop:"off",
                stopAfterLoops:-1,
                stopAtSlide:-1,
                shuffle:"off",
                autoHeight:"off",
                hideThumbsOnMobile:"off",
                hideSliderAtLimit:0,
                hideCaptionAtLimit:0,
                hideAllCaptionAtLilmit:0,
                debugMode:false,
                fallbacks: {
                  simplifyAll:"off",
                  nextSlideOnWindowFocus:"off",
                  disableFocusListener:false,
                }
              });
            }
          }); /*ready*/
        </script>
      <!-- END REVOLUTION SLIDER -->
      </div>
    </section>
	
	<!--<div class="main-content">
		<section class="hero-background divider pt-150" id="home">
				
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-lg-6 text-center">
							<div class="tarns-piggy-back">
								<img class="img-fluid" src="/images/about/tranparent-piggy.png">
							</div>
						</div>
						<div class="col-lg-6">
							<h1>Investment Planning is core of reaching your Goals</h1>
							<p>	We help you plan your existing and new investments in such a way that you are able to reach your Financial Goals.</p>
							<a href="/contactus"><button class="btn about mt-20">Contact Us</button></a>									
						</div>
					</div>
				</div>
				
			</section>
		    
	</div>-->
	
	
	
	<section class="pt-150">
		
		<div class="container  pb-0 ">

		  

		  <div class="row">

		    <div class="col-sm-4">
		      <div class="service-card card-blue">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="Mutual Funds">
		          <span class="card-title">figure out your finances</span>
		        </div>
		        <p class="card-desc">The first step is to keep track of your income and expenses. Write down what you and... </p>
		        <div class="card-footer">
		          <a href="/figure-out-your-finances">Explore</a>
		          
		        </div>
		      </div>
		    </div>

		    <div class="col-sm-4">
		      <div class="service-card card-red">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="Portfolio Management Schemes">
		          <span class="card-title">Needs wants and desires </span>
		        </div>
		        <p class="card-desc">In order to prioritize your spending and increase your savings, it is essential...</p>
		        <div class="card-footer">
		          <a href="/needs-wants-desires">Explore</a>
		         
		        </div>
		      </div>
		    </div>

		    <div class="col-sm-4">
		      <div class="service-card card-orange">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="Alternative Investment">
		          <span class="card-title">Save your money for a rainy day's (emergency fund)</span>
		        </div>
		        <p class="card-desc">Savings are usually put into safe places that allow you access to your money...</p>
		        <div class="card-footer">
		          <a href="/Save-for-a-rainy-day">Explore</a>
		         
		        </div>
		      </div>
		    </div>

		    <div class="col-sm-4">
		      <div class="service-card card-purple">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="International Investing">
		          <span class="card-title">Small savings add up to a large money over time</span>
		        </div>
		        <p class="card-desc">How much does a daily candy bar cost? Would you believe INR 465.84?...</p>
		        <div class="card-footer">
		          <a href="/small-savings-add-up-to-big-money-over-time">Explore</a>
		          
		        </div>
		      </div>
		    </div>

		    <div class="col-sm-4">
		      <div class="service-card card-green">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="Term Insurance">
		          <span class="card-title">Inflation - the general rise in prices</span>
		        </div>
		        <p class="card-desc">Inflation reduces the value of money, which means that with the same...</p>
		        <div class="card-footer">
		          <a href="/inflation-the-general-increase-in-prices">Explore</a>
		          
		        </div>
		      </div>
		    </div>

		    <div class="col-sm-4">
		      <div class="service-card card-teal">
		        <div class="card-header-row">
		          <img class="card-icon" src="/images/about/mf_services.png" alt="Loan Against Mutual Fund">
		          <span class="card-title">Avoid borrowing</span>
		        </div>
		        <p class="card-desc">No investment strategy pays off as well as, or with less risk than, eliminating high interest...</p>
		        <div class="card-footer">
		          <a href="/avoid-borrowing">Explore</a>
		          
		        </div>
		      </div>
		    </div>
			<div class="col-sm-4">
			  <div class="service-card card-blue">
			    <div class="card-header-row">
			      <img class="card-icon" src="/images/about/mf_services.png" alt="Mutual Funds">
			      <span class="card-title">Thumb rules for understanding the power of compounding</span>
			    </div>
			    <p class="card-desc">Compounding allows savings to grow substantially over a period of time as... </p>
			    <div class="card-footer">
			      <a href="/thumb-rules-for-understanding-power-of-compounding">Explore</a>
			      
			    </div>
			  </div>
			</div>

			<div class="col-sm-4">
			  <div class="service-card card-red">
			    <div class="card-header-row">
			      <img class="card-icon" src="/images/about/mf_services.png" alt="Portfolio Management Schemes">
			      <span class="card-title">Know what is risk </span>
			    </div>
			    <p class="card-desc">All investments involve some degree of risk. In finance, risk refers to the degree of...</p>
			    <div class="card-footer">
			      <a href="/understand-what-is-risk">Explore</a>
			     
			    </div>
			  </div>
			</div>

			<div class="col-sm-4">
			  <div class="service-card card-orange">
			    <div class="card-header-row">
			      <img class="card-icon" src="/images/about/mf_services.png" alt="Alternative Investment">
			      <span class="card-title">Gauge your risk profile</span>
			    </div>
			    <p class="card-desc">What are the best saving and investment products for you? The answer depends on when you...</p>
			    <div class="card-footer">
			      <a href="/gauge-your-risk-tolerance">Explore</a>
			     
			    </div>
			  </div>
			</div>
			<div class="col-sm-4">
					      <div class="service-card card-purple">
					        <div class="card-header-row">
					          <img class="card-icon" src="/images/about/mf_services.png" alt="International Investing">
					          <span class="card-title">Set goals for your future needs</span>
					        </div>
					        <p class="card-desc">Savings are usually put into safe places that allow you access to your money at any time...</p>
					        <div class="card-footer">
					          <a href="/define-and-set-your-goals-to-meet-future-goals">Explore</a>
					          
					        </div>
					      </div>
					    </div>

					    <div class="col-sm-4">
					      <div class="service-card card-green">
					        <div class="card-header-row">
					          <img class="card-icon" src="/images/about/mf_services.png" alt="Term Insurance">
					          <span class="card-title">Learn about your investment options</span>
					        </div>
					        <p class="card-desc">A wide variety of investment products exist to help you achieve...</p>
					        <div class="card-footer">
					          <a href="/learn-about-your-investment-avenues-options">Explore</a>
					          
					        </div>
					      </div>
					    </div>

					    <div class="col-sm-4">
					      <div class="service-card card-teal">
					        <div class="card-header-row">
					          <img class="card-icon" src="/images/about/mf_services.png" alt="Loan Against Mutual Fund">
					          <span class="card-title">Diversify your investments</span>
					        </div>
					        <p class="card-desc">Diversification can be neatly summed up as, "Don't put all your eggs in one basket."...</p>
					        <div class="card-footer">
					          <a href="/diversify-your-investments">Explore</a>
					          
					        </div>
					      </div>
					    </div>
						<div class="col-sm-4">
						  <div class="service-card card-red">
						    <div class="card-header-row">
						      <img class="card-icon" src="/images/about/mf_services.png" alt="Portfolio Management Schemes">
						      <span class="card-title">Plan early for retirement </span>
						    </div>
						    <p class="card-desc">You should have a retirement plan in advance, so that when you retire from work,...</p>
						    <div class="card-footer">
						      <a href="/plan-early-for-your-retirement">Explore</a>
						     
						    </div>
						  </div>
						</div>
				<!--<div class="row mb-30 text-center">
			   
			    <div class="col-lg-12 ">
			      <button class="btn about " id="openServicesBtn">Explore More </button>
			    </div>
			  </div>-->

		  </div>
		</div>

		<!-- Overlay -->
		<div class="services-overlay" id="servicesOverlay"></div>

		<!-- Sidebar -->
		<div class="services-sidebar" id="servicesSidebar">
		  <div class="services-sidebar-header">
		    <h3>Our Services</h3>
		    <button class="close-btn" id="closeServicesBtn">&times;</button>
		  </div>
		  <ul class="services-list">
		    
		    <li><a href="/figure-out-your-finances"><span class="svc-icon glyphicon glyphicon-warning-sign"></span><span class="svc-text">figure out your finances</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/understand-what-is-risk"><span class="svc-icon glyphicon glyphicon-stats"></span><span class="svc-text">understand what is risk </span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/gauge-your-risk-tolerance"><span class="svc-icon glyphicon glyphicon-briefcase"></span><span class="svc-text">Gauge your risk tolerance</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/Save-for-a-rainy-day"><span class="svc-icon glyphicon glyphicon-signal"></span><span class="svc-text">Save for a rainy day </span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/small-savings-add-up-to-big-money-over-time"><span class="svc-icon glyphicon glyphicon-lock"></span><span class="svc-text">Small savings add up to big money over time</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/needs-wants-desires"><span class="svc-icon glyphicon glyphicon-usd"></span><span class="svc-text">Needs, wants desires</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/define-and-set-your-goals-to-meet-future-goals"><span class="svc-icon glyphicon glyphicon-time"></span><span class="svc-text">Define/set your goals to meet future goals</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/avoid-borrowing"><span class="svc-icon glyphicon glyphicon-asterisk"></span><span class="svc-text">Avoid borrowing</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="thumb-rules-for-understanding-power-of-compounding"><span class="svc-icon glyphicon glyphicon-list-alt"></span><span class="svc-text">Thumb rules for understanding <br> power of compounding</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="learn-about-your-investment-avenues-options"><span class="svc-icon glyphicon glyphicon-hourglass"></span><span class="svc-text">Learn about your investment avenues options</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="diversify-your-investments"><span class="svc-icon glyphicon glyphicon-file"></span><span class="svc-text">Diversify your investments</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		    <li><a href="/inflation-the-general-increase-in-prices"><span class="svc-icon glyphicon glyphicon-credit-card"></span><span class="svc-text">Inflation : The General Increase in Prices</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
			<li><a href="/plan-early-for-your-retirement"><span class="svc-icon glyphicon glyphicon-credit-card"></span><span class="svc-text">Plan early for your retirement</span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
			<li><a href="/emergency-funds"><span class="svc-icon glyphicon glyphicon-credit-card"></span><span class="svc-text">Emergency funds </span><span class="svc-arrow glyphicon glyphicon-chevron-right"></span></a></li>
		  </ul>
		</div>

		
		
	</section>
   
	<!--<section >
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-md-7">
					<img src="/images/about/finance-correct-combination.png" class="img-fluid"> 
				</div>
				<div class="col-md-5">
					<h6 class="text-theme-colored1">Welcome to</h6>
					<img src="/images/about/company-name.png" width="300px;">
					<p class="text-justify mt-20">Your trusted partner in navigating the complexities of financial planning. We specialize in providing expert advice and personalized solutions in mutual funds, insurance, and comprehensive financial strategies. </p>
					<p class="text-justify mt-20">Our foundation is built on years of experience and a deep understanding of the financial markets. We are committed to staying abreast of the latest industry trends and regulations to ensure our clients receive the most up-to-date and effective advice. </p>
					
					
					<a href="/aboutus"><button class="btn about mt-20">About Us</button></a>
				</div>
				
			</div>
		</div>
	</section>-->
	<!-- Funfact section-->
	
<!-- <section >
	<div class="container pt-0">
		
		<div class="row ">
			
			<div class="col-lg-7 animate__animated animate__fadeInDown">
				<div class="row">
					<div class="col-lg-6 ">
						<div class="card fun-card">
							<div class="card-body">
								
								<h1 class="text-theme-colored mt-20" id="counter1">0</h1>
								<hr>
								<h3 class="">Investors</h3>
								<p>	All of our clients are satisfied with our work and service</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 ">
						<div class="card fun-card">
							<div class="card-body">
								
								<h1 class="text-theme-colored mt-20" id="counter2">0</h1>
								<hr>
								<h3 class="">Families</h3>
								<p>	All of our clients are satisfied with our work and service</p>
							</div>
						</div>
						
					</div>
					
				</div>
			</div>
			<div class="col-lg-5 text-center">
				<img src="/images/about/finance-photo-ai.png" class="img-fluid">
			</div>
		</div>
	</div> 
</section>
--><!-- Explore Key Financial Topics -->
<section class="financial-topics-section">
    <div class="container ">

        <div class="financial-topic-heading text-center">
            <span>FINANCIAL KNOWLEDGE FOR A BETTER FUTURE</span>
            <h2>Our Services</h2>
            <p>Learn. Plan. Invest. Grow.</p>
        </div>

        <div class="row">

            <!-- Card 1 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-blue">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-list-alt"></span>
                    </div>

                    <h4>Financial planning</h4>

                    <p>
                        Financial planning is a comprehensive strategy to manage your money, achieve personal goals and financial freedom...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>


            <!-- Card 2 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-green">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-check"></span>
                    </div>

                    <h4>Budgeting and cash flow</h4>

                    <p>
                        A budget is a financial plan that tracks your income and expenses over a specific period. It helps you manage your money...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>


            <!-- Card 3 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-orange">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-piggy-bank"></span>
                    </div>

                    <h4>Risk management through insurance</h4>

                    <p>
                        Insurance provides you financial support if something unexpected happens to you and your family - such as an accident, medical...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>


            <!-- Card 4 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-purple">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-screenshot"></span>
                    </div>

                    <h4>Setting Financial Goals</h4>

                    <p>
                        A good financial goal should be SMART i.e. Specific, Measurable, Achievable, Realistic and Time bound...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>


            <!-- Card 5 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-yellow">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-road"></span>
                    </div>

                    <h4>Multiple future goals planning</h4>

                    <p>
                        Financial goals are targets to achieve specific financial objectives within a specified timeframe. By establishing...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>


            <!-- Card 6 -->
            <div class="col-sm-4">
                <div class="financial-topic-card topic-blue2">

                    <div class="topic-icon">
                        <span class="glyphicon glyphicon-stats"></span>
                    </div>

                    <h4>Retirement planning</h4>

                    <p>
                        You should have a retirement plan in advance, so that when you retire from work, you continue to maintain the...
                    </p>

                    <a href="#">Explore Now <span>&rarr;</span></a>

                </div>
            </div>

        </div>


        <!-- View All Topics Button -->
       <!-- <div class="text-center view-all-topic-wrap">
            <button type="button"
                    class="btn view-all-topic-btn"
                    id="viewAllTopics">
                View All Topics <span>&rarr;</span>
            </button>
        </div>-->

    </div>
</section>


<!-- Overlay -->
<div class="financial-sidebar-overlay" id="financialSidebarOverlay"></div>


<!-- Left Sidebar -->
<div class="financial-sidebar" id="financialSidebar">

    <div class="financial-sidebar-header">

        <div>
            <h3>Our Services</h3>
        </div>

        <button type="button"
                class="financial-sidebar-close"
                id="closeFinancialSidebar">
            &times;
        </button>

    </div>


    <div class="financial-sidebar-content">

        <!-- Overview -->
        <!--<a href="#" class="financial-menu-item">
            <span class="glyphicon glyphicon-home"></span>
            <span>Overview</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>


        <div class="menu-section-title">
            KEY COMPONENTS
        </div>
-->

        <a href="/financial-service" class="financial-menu-item">
            <span class="glyphicon glyphicon-usd"></span>
            <span>Financial planning</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/budgeting-and-cash-flow" class="financial-menu-item">
            <span class="glyphicon glyphicon-warning-sign"></span>
            <span>Budgeting and cash flow</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/risk-management-through-insurance" class="financial-menu-item">
            <span class="glyphicon glyphicon-stats"></span>
            <span>Risk management through insurance</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/setting-financial-goals" class="financial-menu-item">
            <span class="glyphicon glyphicon-briefcase"></span>
            <span>Setting Financial Goals</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/multiple-future-goals-planning" class="financial-menu-item">
            <span class="glyphicon glyphicon-signal"></span>
            <span>Multiple future goals planning</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/retirement-planning" class="financial-menu-item">
            <span class="glyphicon glyphicon-lock"></span>
            <span>Retirement planning</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>


        


        <a href="/investment-strategy-based-on-your-risk-profile-and-asset-allocation" class="financial-menu-item">
            <span class="glyphicon glyphicon-usd"></span>
            <span>Investment strategy based on your risk profile <br> and asset allocation</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/retirement-goal-tracker" class="financial-menu-item">
            <span class="glyphicon glyphicon-time"></span>
            <span>Retirement goal tracker</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/goal-planning-with-variable-aa" class="financial-menu-item">
            <span class="glyphicon glyphicon-screenshot"></span>
            <span>Goal Planning with Variable AA</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/your-investment-goal-tracker" class="financial-menu-item">
            <span class="glyphicon glyphicon-list-alt"></span>
            <span>Your Investment Goal Tracker</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/cost-of-delay-in-savings-and-investments" class="financial-menu-item">
            <span class="glyphicon glyphicon-hourglass"></span>
            <span>Cost of Delay in Savings &amp; Investments</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/portfolio-performance-tracker" class="financial-menu-item">
            <span class="glyphicon glyphicon-file"></span>
            <span>Portfolio performance tracker - Self</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>

        <a href="/net-worth" class="financial-menu-item">
            <span class="glyphicon glyphicon-credit-card"></span>
            <span>Net worth</span>
            <span class="menu-arrow">&rsaquo;</span>
        </a>
		
		<a href="know-your-liabilities" class="financial-menu-item">
		            <span class="glyphicon glyphicon-credit-card"></span>
		            <span>Know Your Liabilities</span>
		            <span class="menu-arrow">&rsaquo;</span>
		        </a>

    </div>

</div>


<!-- Investment Process section end -->
	<section>
		<div class="container pt-0">
			<div class="row ">
				<div class="col-md-12 mb-40">
					<h2 class="">Financial products</h2>
				</div>
			</div>
			<div class="row" id="service-color-code">
				<div class="col-md-3">
					<div class="card service-card-red">
						<div class="card-body">
							<img src="/images/about/piggy-bank-red.png" class="img-fluid img-red" >
							<h4 class="mt-20">Mutual Fund </h4>
							<p>Mutual funds are financial instruments which invest in a portfolio...</p>
							<a href="/mutual-fund"><img src="/images/about/right-arrow.png" class="img-fluid"></a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card service-card-blue">
						<div class="card-body">
							<img src="/images/about/social-life.png" class="img-fluid img-blue">
							<h4 class="mt-20">Bonds</h4>
							<p>Bonds are fixed income instruments which pay fixed rate of interest,...</p>
							<a href="/bonds-and-ncd"><img src="/images/about/right-arrow.png" class="img-fluid"></a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card service-card-orange">
						<div class="card-body">
							<img src="/images/about/pie-chart.png" class="img-fluid img-orange">
							<h4 class="mt-20">PMS</h4>
							<p>Portfolio Management Services or PMS, is a service offered by the...</p>
							<a href="/pms"><img src="/images/about/right-arrow.png" class="img-fluid"></a>
						</div>
					</div>
					
				</div>
				<div class="col-md-3">
					<div class="card service-card-green">
						<div class="card-body">
							<img src="/images/about/promotion.png" class="img-fluid img-green">
							<h4 class="mt-20">AIF</h4>
							<p>Alternative Investment Funds or AIF in short, are defined as privately...</p>
							<a href="/aif"><img src="/images/about/right-arrow.png" class="img-fluid"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
   
<!-- SIP Calculator section start -->
	
	 <section>
	<div class="container pt-0">
		<div class="row">
			<div class="col-lg-12">
				 <h2 class="   mb-20 mt-30">SIP <span class="">Calculator</span></h2>
				 <p class="mb-30">Plan your investments and see how your money can grow over time with our SIP calculator.</p>
			</div>
		</div>

	
						<div class="row id="sip"">
							<div class="col-lg-6 col-md-6 mt-30">
								<div class="row mb-30">
									<div class="col-lg-7">
										<h4>Monthly Savings (Rs.)</h4>
									</div>
									<div class="col-lg-5">
										<input type="text" class="textField" value="25,000" id="sipamount" maxlength="6" onchange="amountChange()" fdprocessedid="pfoshb"> 
									</div>
								</div>
								<div class="row mb-30">
									<div class="col-lg-7">
										<h4> Investment period (Yrs)</h4>
									</div>
									<div class="col-lg-5">
										 <select  class="textField chart" id="sipmonth" maxlength="4" onchange="monthChange()" fdprocessedid="tnf5pn">
										      <option value="36">3</option>
										      <option value="60" selected="">5</option>
										      <option value="120">10</option>
										      <option value="180">15</option>
										      <option value="240" selected="">20</option>
										      <option value="360">30</option>
										      <option value="600">50</option>
										</select>  
									</div>
								</div>
								<div class="row">
									<div class="col-lg-7">
										<h4>Annual Return</h4>
									</div>
									<div class="col-lg-5">
										<select  class="textField chart" id="sipinterest" maxlength="4" onchange="interestChange()" fdprocessedid="zlist4">
									      <option value="8">8</option>
									      <option value="12" selected="">12</option>
									      <option value="15">15</option>
									      <option value="18">18</option>
								   	  </select>  
									</div>
								</div>
								 
								
							</div>
							
							 <div class="col-sm-6 col-md-12 col-lg-6 " >
							 	
				                   <div id="emipiechart" style=" overflow:visible;"></div>
				                    
				                </div>
						</div>
						
						
	
		<div class="row pt-30" >
			<div class="col-lg-12 text-center">
			<div class="card">
				<div class="card-body">
						
					<h3 class="outputtext text-center"></h3>
	      
				</div>
			</div>
			</div>
		</div>
	</div>
</section>


<div class="container pb-5">
    <section class="testimonial-section">
        <div class="testimonial-content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="section-label">TESTIMONIALS</div>
                    <h2 class="testimonial-heading">
                        What Our Clients<br>
                        Say About Us
                    </h2>
                </div>

                <div class="col-sm-6">
                    <p class="testimonial-intro">
                        The success of our clients is the true measure of our work.
                        At Vice, we are proud to have partnered with businesses across
                        industries, helping them achieve.
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="testimonial-card">
                        <div class="rating">*****</div>

                        <p class="testimonial-text">
                            The success of our clients is the true measure of our work.
                            At Vice, we are proud to have partnered with businesses
                            across industries, helping them achieve.
                        </p>

                        <h4 class="client-name">Michael Hartono</h4>
                        <p class="client-role">CEO, Hartono Retail Group</p>

                        <span class="quote-icon">"</span>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="testimonial-card">
                        <div class="rating">*****</div>

                        <p class="testimonial-text">
                            Working with Vulture was a game-changer. They took the
                            time to understand our challenges and created a tailored
                            strategy that aligned perfectly with our goals.
                        </p>

                        <h4 class="client-name">Sarah Williams</h4>
                        <p class="client-role">Marketing Director</p>

                        <span class="quote-icon">"</span>
                    </div>
                </div>
            </div>

        </div>
    </section>
</div>



<!--<section class="divider layer-overlay overlay-theme-colored-5" data-background-ratio="0.5">
      <div class="container pt-0">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-12">
              <h2 class="text-uppercase   mt-0 ">What Our <span class=""> Clients Say </span></h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 mb-10">
			<div class="card">
				<div class="card-body">
					<div class="">
						
					</div>
				</div>					
			</div>
            <div class="owl-carousel-2col carousel" data-dots="true" data-duration="8000">
               <div class="item tes-item">
                	<p class="just-content text-black">"As someone new to investing, I was overwhelmed by all the options. The experts at Moneyflow Investments broke everything down in simple terms and helped me build a strong, diversified portfolio. I appreciate their transparency and constant support."</p>
       				<p class="h5  text-theme-colored2">Prachi</p>
               	</div>
             	<div class="item tes-item">
                	<p class="just-content text-black">"I had savings but no clear direction on how to grow them. The Moneyflow team walked me through every step, created a personalized strategy, and over the years I saw real progress. Their transparency and professionalism are unmatched."</p>
       				<p class="h5  text-theme-colored2">Tazeen Eram</p>
               	</div>
               <div class="item tes-item">
                	<p class="just-content text-black">"I rely on Moneyflow Investments for retirement planning and wealth management. They take the time to explain every strategy, and Ive built a financial plan that actually feels achievable."</p>
       				 <p class="h5  text-theme-colored2">Client 3</p> 
               	</div>
               	<div class="item tes-item">
                	<p class="just-content text-black">"I approached Moneyflow Investments because I wanted a structured, long-term plan instead of scattered savings. They provided a clear strategy with actionable steps that fit my income and lifestyle. Their professionalism gave me complete confidence in their recommendations."</p>
       				<p class="h5  text-theme-colored2">Rahul Sharma</p>
               	</div>
               	<div class="item tes-item">
                	<p class="just-content text-black">" My business keeps me busy, so I needed experts who could actively manage my portfolio. Moneyflow Investments optimized my assets, reduced unnecessary fees, and introduced new opportunities I hadnt considered. The performance boost was immediate."</p>
       				 <p class="h5  text-theme-colored2">Client 5</p> 
               	</div>
               	<div class="item tes-item">
                	<p class="just-content text-black">"As someone in my late 20s, I wanted to start building wealth early but didn't know where to begin. Moneyflow Investments helped me set clear goals and start with a budget-friendly investment plan. I'm already seeing growth, and it motivates me to stay consistent."</p>
       				 <p class="h5  text-theme-colored2">Client 6</p> 
               	</div>
               	
               
            </div> 
          </div>
        </div>
      </div>
</section>
--> 
   
 <!-- Section: blog -->
    <section id="blog" style="background: #f7f7f7;" style="padding-top:60px;">
      <div class="container">
        <div class="section-title ">
          <div class="row">
            <div class="col-md-9">
              <h2 class="text-uppercase  mt-0">Our <span class=""> Blogs</span></h2>
            </div>
			<div class="col-md-3 text-right">
				<a href="/blog"><button class="btn about" fdprocessedid="sb9ch">View All</button></a>
			</div>
          </div>
        </div>
        <div class="section-content">
          
              <div class="owl-carousel-col owl-nav-top" data-nav="true">
                
                <div class="item">
					<div class="row" id="blogcard">
					   <div class="col-md-4">
						<a href="/blog-details/How-to-Build-a-1-Crore-Portfolio-from-Zero">
	                  	<div class="card">
							<div class="card-body">
								<img class="img-fluid mb-20" src="/images/blog/amount.png">
								<h5>How to Build a 1 Crore Portfolio from Zero ...</h5>
							</div>
							
						</div>
						</a>
                </div>
				<div class="col-md-4">
					<a href="/blog-details/Why-Large-Cap-Funds-Should-Be-Part-of-Your-Core-Portfolio">
                  	<div class="card">
						<div class="card-body">
							<img class="img-fluid mb-20" src="/images/blog/how-to-choose-a-financial-advisor.jpeg">
							<h5> Why Large Cap Funds Should Be Part of Your Core Portfolio ...</h5>
						</div>
						
					</div>
					</a>
            	</div>
				<div class="col-md-4">
					<a href="/blog-details/SIP-vs-Lumpsum-Which-Investment-Strategy-Is-Right-for-You">
                  	<div class="card">
						<div class="card-body">
							<img class="img-fluid mb-20" src="/images/blog/large-cap.png">
							<h5>SIP vs Lumpsum : Which Investment Strategy Is Right...</h5>
						</div>
						
					</div>
					</a>
            	</div>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
        
    

	<!-- Divider: Clients -->
<!-- 	<section class="clients bg-theme-colored1">
	    <div class="container ">
	        <div class="section-title text-center">
	            <div class="row">
	                <div class="col-md-12">
	                    <h2 class="text-uppercase text-theme-colored2 line-bottom-double-line-centered mt-0">Our <span class="text-theme-colored"> Partners</span> </h2>
	                </div>
	            </div>
	        </div>
	        <div class="row">
	            <div class="slide_vertical_wrap " style="height:300px;">
	                <div class="infiniteslide_wrap">
	                    <div class="infiniteslide_wrap" style="overflow: hidden;height: 300px;">
	                        <ul class="slide_vertical mb-10" data-style="infiniteslide16775885016091e8c"
	                            style="display: flex; flex-flow: column nowrap; align-items: center; animation: 36.0683s linear 0s infinite normal none running infiniteslide16775885016091e8c;">
	                            <picture style="flex: 0 0 auto; display: block;">
	                                <img src="/images/client_logos_new.png" class="img-fluid" alt="a cute kitten">
	                            </picture>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>    -->
    
  <!-- end main-content -->
  </div>
