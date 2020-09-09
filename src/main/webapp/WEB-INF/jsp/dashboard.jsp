<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1>
   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script type='text/javascript' src='http://ec2-52-22-222-135.compute-1.amazonaws.com/javascripts/api/viz_v1.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Muli:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  
  <!-- Custom styles for this template -->
<style>
html {
    position: relative;
height: auto !important;
margin-bottom: 0px !important;
    padding-bottom: 0px !important;
}
.row {

    margin-right: 0 !important;
    margin-left: 0 !important;
}
body {
/*    padding-top: 4.5rem;
/*   margin-bottom: 4.5rem;
*/background: #F7F9FC !important;
font-family: Muli, san-sarif;

/*overflow: hidden;*/
}

*{

  box-sizing: border-box;

}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 3.5rem;
  line-height: 3.5rem;
  background-color: #ccc;
}
li.nav-item {
    text-align: center;
    padding: 0.5rem 0rem 0.5rem 0.5rem;
}
.nav-link:hover {
  transition: all 0.4s;
}

.nav-link-collapse:after {
  float: right;
  content: '\f067';
  font-family: 'FontAwesome';
}

.nav-link-show:after {
  float: right;
  content: '\f068';
  font-family: 'FontAwesome';
}

.nav-item ul.nav-second-level {
  padding-left: 0;
}

.nav-item ul.nav-second-level > .nav-item {
  padding-left: 20px;
}
ul#navAccordion > .nav-item{

 font-family: Muli;
    font-style: normal;
    font-weight: 600;
    font-size: 15px;
    line-height: 19px;
    height: 55px;
    letter-spacing: 0.2px;
    color: #75AFCC;
    padding: 0 0rem;
    border-left: 4px solid transparent;
    padding-top: 7px;
}
ul#navAccordion > .nav-item a{

font-family: Muli;
    font-style: normal;
    font-weight: 400;
    font-size: 15px;
    line-height: 19px;
    letter-spacing: 0.2px;
    color: #75AFCC;
    height: 50px;
    padding-top: 12px;
    text-align: left;
    padding-left: 24px;
  }
  ul#navAccordion > .nav-item.active {
    font-family: Muli;
    font-style: normal;
    font-weight: 600;
    font-size: 15px;
    line-height: 19px;
    letter-spacing: 0.2px;
    height: 55px;
    padding-top: 7px;
    background-color: #092B3C;
    border-left: 4px solid #fff;
    color: #fff !important;
}
ul#navAccordion > .nav-item:hover {
    font-family: Muli;
    font-style: normal;
    font-weight: 600;
    font-size: 15px;
    line-height: 19px;
    letter-spacing: 0.2px;
    height: 55px;
    padding-top: 7px;
    background-color: #092B3C;
    border-left: 4px solid #fff;
    color: #fff !important;}
ul#navAccordion > .nav-item.active a {

  color: #fff;
  font-weight: 600;
}

@media (min-width: 768px){
.col-md-2 {   
    position: fixed;
    left: 0;
    z-index: 999;
}
.col-md-10 {   
    position: relative;
    left: 16%;
}
}
@media (min-width: 992px) {
  .sidenav {
    position: absolute;
    top: 0;
    left: 0;
    width: 255px;
    height: calc(100vh);
/*    margin-top: 3.5rem;
*/    background: #001925;
    box-sizing: border-box;
    border-top: 1px solid rgba(0, 0, 0, 0.3);
  }

  .navbar-expand-lg .sidenav {
    flex-direction: column;
  }

  .content-wrapper {
  margin-left: 40px;
    margin-right: 5px;
  }

  .footer {
    width: calc(100% - 40px);
    margin-left: 10px;
  }
}
 .container-fluidcustom {

  background: #FFFFFF;
    border: 1px solid #EBEBEB;
    box-sizing: border-box;
    border-radius: 4px;
    margin: 2px 0px 2px 20px;

}
li.customli a{

  font-family: Muli;
font-style: normal;
font-weight: bold;
font-size: 14px;
line-height: 18px;
/* identical to box height */

letter-spacing: 0.3px;

color: #219EBC;
}
li.customli a:hover{
  text-decoration: underline;
}

.customui{
  width: 100%;
  margin-block-start: 0em;
  margin-block-end: 0em;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
  padding-inline-start: 0px;
  margin-top: 0px;
}
.customrow{
  background-color: #fff;
  padding: 15px 15px;
  background: #FFFFFF;
  border: 1px solid #EBEBEB;
  box-sizing: border-box;
  border-radius: 4px;
  margin: 0px 0px 2px 17px;
  min-height: 510px;
}
.pfooter{
  font-family: Muli;
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 0px;
    /* margin: 10px 0; */
    color: #A8A8A8;
    margin-top: 20px;
    margin-bottom: 20px;
    padding-top: 3px;
}
a.logoutclass.customli{

  margin-right: 2%;
    font-family: Muli;
    font-style: normal;
    font-weight: bold;
    font-size: 14px;
    line-height: 18px;
    letter-spacing: 0.3px;
    color: #219EBC;
}
.logoclass{

  margin:14px 5px 14px 27px;
   
}
@-moz-document url-prefix() {
  .customrow{
  background-color: #fff;
  padding: 15px 15px;
  background: #FFFFFF;
  border: 1px solid #EBEBEB;
  box-sizing: border-box;
  border-radius: 4px;
  margin: 0px 0px 2px 17px;
  min-height: 540px;
}
.pfooter{
  font-family: Muli;
    font-style: normal;
    font-weight: 400;
    font-size: 12px;
    line-height: 0px;
    /* margin: 10px 0; */
    color: #A8A8A8;
    margin-top: 20px;
    margin-bottom: 20px;
  
}
}  
</style>

</head>

<body>
  <button
    class="navbar-toggler"
    type="button" style="display: none;"
    data-toggle="collapse"
    data-target="#navbarCollapse"
    aria-controls="navbarCollapse"
    aria-expanded="false"
    aria-label="Toggle navigation"
  >
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="row">
    <div class="col-md-2 col-sm-2"> 

<ul class="navbar-nav mr-auto sidenav" id="navAccordion">
      <a class="nav-link" href="#" style="padding: 1px 0px 5px;">
         
      <li class="nav-item active">
        <a class="nav-link " href="#">Dashboard</a>
      </li>
     
    </ul>
    </div>
<!-- </nav>

 -->
 <div class="col-md-10 col-sm-10">
 <main class="content-wrapper">
  <div class="container-fluid" style="padding: 0;">
    <nav class="navbar navbar-expand-sm bg-light" style="padding: 10px 0px;">

                <ul class="navbar-nav customui">
                  This is sample embedded dashboard from tableau server
                </ul>
                <a href="" class="logoutclass customli">Logout</a>
              </nav>
               <div class="container" >
                <div class="row customrow">
                
                <div class='tableauPlaceholder' style='width: 966px; height: 454px;'>
					<object class='tableauViz' width='966' height='554' style='display:none;'>
					<param name='host_url' value='http://ec2-52-22-222-135.compute-1.amazonaws.com/' /> 
					<param name='embed_code_version' value='3' /> 
					<param name='site_root' value='' />
					<param name='name' value='Regional&#47;College' />
					<param name='tabs' value='yes' />
					<param name='toolbar' value='no' />
					<param name='showAppBanner' value='false' />
					<param name="ticket" value='${ticket}' /> 
					</object>
			</div>
                  
                </div>


              </div>

  
     
 
  </div>
</main>
 <div class="text-center pfooter">
          <p>Designed & Developed by Evoke Technologies Pvt Ltd © 2020 All Rights Reserved</p>
      </div>
</div>
</div>

 

</body>

</html>
