<html>
    <head>
        <title>
            
        </title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-vivid.css">
        <style>

            .wide{
                max-width: 50%;
            }

            body{
                 background-image: url(images/b2.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
    </head>
    <body class="w3-padding-16 ">

<?php 
        session_start();

    include './content/signupcontent.php';
 ?>
       <center>
        <div class="w3-black w3-opacity-min w3-center w3-card w3-margin-left w3-margin-right wide w3-round">
            
                      <form name="frmregister" method="POST" action="" class="wide w3-content" >
                            <p align="center" class="w3-xxxlarge" style="font-size:40px;"><br/><u><b> Sign Up</b></u></p>
                          <h2><b><b><u>Personal Details</u></b></b></h2>
                                    NAME:<input type="text" name="name" id="txtname" class="w3-padding-16 w3-round w3-input w3-border w3-content "
                                     maxlength="30" value= " <?php echo $name ?>" placeholder="Enter name" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" required onblur="validateuname();"/>
                                     <br/>

                                                                                                             
                                    <!-- PASSPORT SIZE PHOTO:<input type="file" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="txnmobile" placeholder="Upload your BHAMASHAH CARD XEROX" required="" class="w3-padding-16 w3-input w3-border w3-content w3-round"/> -->
                                                                          <br/>
                                    PHONE NO.:<input type="text"  pattern="[1-9]{1}[0-9]{9}" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="phoneno" placeholder="Enter student's phone number" class="w3-padding-16 w3-input w3-border w3-content w3-round" required=""><br/>
                                    
                                    Date of Birth:<input type="Date" name="dob" class="w3-padding-16 w3-round w3-input w3-border w3-content"><br/><br/>
                                    
                                    CURRENT ADDRESS:<textarea name="caddress" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" rows="2" cols="20" placeholder="Enter current address" class="w3-padding-16 w3-input w3-border w3-round w3-content"></textarea><br/>
								    
                                   PERMANENT ADDRESS:  <textarea name="paddress" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" rows="2" cols="20" placeholder="Enter permanent address" class="w3-padding-16 w3-input w3-border w3-content w3-round"></textarea><br/></br>
                                    
                                    AADHAR NUMBER:<input type="text"  pattern="[1-9]{1}[0-9]{11}" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="aadhar" placeholder="Enter aadhar number" required="" class="w3-padding-16 w3-input w3-border w3-content w3-round"><br/>
                                    
                                    <!-- ADHAAR UPLOAD:<input type="file" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="txnmobile" placeholder="Upload your ADHAAR CARD XEROX" required="" class="w3-padding-16 w3-input w3-border w3-round w3-content"/><br/> -->
                                    
                                    BHAMASHAH NUMBER:<input type="text"  pattern="[1-9]{1}[0-9]{10}" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="bid" placeholder="Enter bhamashah card number" required="" class="w3-padding-16 w3-input w3-border w3-content w3-round"><br/>
                                    
                                    <!-- BHAMASHAH CARD UPLOAD:<input type="file" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="txnmobile" placeholder="Upload your BHAMASHAH CARD XEROX" required="" class="w3-padding-16 w3-input w3-border w3-content w3-round"/><br/> -->
								
								    PASSWORD:<input type="password" style="border:none;border-bottom:2px solid orange;background-color:inherit;color:white;" name="password" placeholder="Enter password" required="" class="w3-padding-16 w3-input w3-border w3-content w3-round"><br/>
								<br/>
                                <input type="submit" name="submit" class="w3-button w3-margin-bottom w3-content w3-border w3-round w3-ripple w3-hover-green" value="SUBMIT"><a href="login.php">  </input>
								<input type="reset" class="w3-button w3-margin-bottom w3-content w3-border w3-round w3-ripple w3-hover-red" value="CLEAR"/>
                          
            </form>
						
		
        </center>        
        </div>
    </body>
</html>