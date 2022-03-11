$(document).ready(function() {

    $("#username_error_message").hide();
    $("#password_error_message").hide();
    $("#retype_password_error_message").hide();
    $("#age_error_message").hide();
    $("#email_error_message").hide();
    $("mobile_error_message").hide();
    $("telephone_error_message").hide();

    var error_username = false;
    var error_password = false;
    var error_retype_password = false;
    var error_age = false;
    var error_email = false;
    var error_mobile = false;
    var error_telephone = false;

    $("#username").focusout(function(){
       check_username();
    });

    $("#password").focusout(function() {
       check_password();
    });
    $("#form_retype_password").focusout(function() {
     check_retype_password();
    });

    $("#form_age").focusout(function() {
       check_age();
    });

    $("#form_email").focusout(function() {
       check_email();
    });

    $("#form_mobile").focusout(function() {
       check_mobile();
    });

    $("#form_telephone").focusout(function() {
       check_telephone();
    });

    function check_username() {
       var pattern = /^[a-zA-Z]*$/;
       var username = $("#username").val();
       if (pattern.test(username) && username !== '') {
          $("#username_error_message").hide();
          $("#username").css("border-bottom","2px solid #34F458");
       } else {
          $("#username_error_message").html("Should contain only Characters");
          $("#username_error_message").show();
          $("#username").css("border-bottom","2px solid #F90A0A");
          error_fname = true;
       }
    }

    function check_password() {
       var password_length = $("#password").val().length;
       if (password_length < 8) {
          $("#password_error_message").html("Atleast 8 Characters");
          $("#password_error_message").show();
          $("#password").css("border-bottom","2px solid #F90A0A");
          error_password = true;
       } else {
          $("#password_error_message").hide();
          $("#password").css("border-bottom","2px solid #34F458");
       }
    }

    function check_retype_password() {
       var password1 = $("#password").val();
       var retype_password = $("#form_retype_password").val();
       if (password1 !== retype_password) {
          $("#retype_password_error_message").html("Passwords Did not Matched");
          $("#retype_password_error_message").show();
          $("#form_retype_password").css("border-bottom","2px solid #F90A0A");
          error_retype_password = true;
       } else {
          $("#retype_password_error_message").hide();
          $("#form_retype_password").css("border-bottom","2px solid #34F458");
       }
    }


    function check_age() {
       var age_length = $("#form_age").val().length;
       if (age_length > 2) {
          $("#age_error_message").html("invalid input");
          $("#age_error_message").show();
          $("#form_age").css("border-bottom","2px solid #F90A0A");
          error_password = true;
       } else {
          $("#age_error_message").hide();
          $("#form_age").css("border-bottom","2px solid #34F458");
       }
    }

    function check_email() {
       var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
       var email = $("#form_email").val();
       if (pattern.test(email) && email !== '') {
          $("#email_error_message").hide();
          $("#form_email").css("border-bottom","2px solid #34F458");
       } else {
          $("#email_error_message").html("Invalid Email");
          $("#email_error_message").show();
          $("#form_email").css("border-bottom","2px solid #F90A0A");
          error_email = true;
       }
    }

    function check_mobile() {
       var mobile_length = $("#form_mobile").val().length;
       if (mobile_length < 10) {
          $("#mobile_error_message").html("invalid mobile number");
          $("#mobile_error_message").show();
          $("#form_mobile").css("border-bottom","2px solid #F90A0A");
          error_mobile = true;
       } else {
          $("#mobile_error_message").hide();
          $("#form_mobile").css("border-bottom","2px solid #34F458");
       }
    }

    function check_telephone() {
       var telephone_length = $("#form_telephone").val().length;
       if (telephone_length < 7) {
          $("#telephone_error_message").html("invalid telephone number");
          $("#telephone_error_message").show();
          $("#form_telephone").css("border-bottom","2px solid #F90A0A");
          error_telephone = true;
       } else {
          $("#telephone_error_message").hide();
          $("#form_telephone").css("border-bottom","2px solid #34F458");
       }
    }

    $("#form").submit(function() {
       error_username = false;
       error_password = false;
       error_retype_password = false;
       error_age = false;
       error_email = false;
       error_mobile = false;
       error_telephone = false;

       check_username();
       check_password();
       check_retype_password();
       check_age();
       check_email();
       check_mobile();
       check_telephone() 

       if (error_username === false && error_password === false && error_retype_password === false && error_age === false && error_email === false && error_mobile === false && error_telephone ===false) {
          alert("Registration Successfull");
          return true;
       } else {
          alert("Please Fill the form Correctly");
          return false;
       }


    });
 });



 $(document).ready(function() {

    $("#username_message").hide();
    $("#password_message").hide();
    $("#retype_password_message").hide();

    var error_username = false;
    var error_password = false;
    var error_retype_password = false;

    $("#usernamea").focusout(function(){
       check_username();
    });

    $("#passworda").focusout(function() {
       check_password();
    });
    $("#form_retype_passworda").focusout(function() {
     check_retype_password();
    });


    function check_username() {
       var pattern = /^[a-zA-Z]*$/;
       var username = $("#usernamea").val();
       if (pattern.test(username) && username !== '') {
          $("#username_message").hide();
          $("#usernamea").css("border-bottom","2px solid #34F458");
       } else {
          $("#username_message").html("Should contain only Characters");
          $("#username_message").show();
          $("#usernamea").css("border-bottom","2px solid #F90A0A");
          error_fname = true;
       }
    }

    function check_password() {
       var password_length = $("#passworda").val().length;
       if (password_length < 8) {
          $("#password_message").html("Atleast 8 Characters");
          $("#password_message").show();
          $("#passworda").css("border-bottom","2px solid #F90A0A");
          error_password = true;
       } else {
          $("#password_message").hide();
          $("#passworda").css("border-bottom","2px solid #34F458");
       }
    }

    function check_retype_password() {
       var password1 = $("#passworda").val();
       var retype_password = $("#form_retype_passworda").val();
       if (password1 !== retype_password) {
          $("#retype_password_message").html("Passwords Did not Matched");
          $("#retype_password_message").show();
          $("#form_retype_passworda").css("border-bottom","2px solid #F90A0A");
          error_retype_password = true;
       } else {
          $("#retype_password_message").hide();
          $("#form_retype_passworda").css("border-bottom","2px solid #34F458");
       }
    }
    $("#form2").submit(function() {
        error_username = false;
        error_password = false;
        error_retype_password = false;

        check_username();
        check_password();
        check_retype_password();
 
        if (error_username === false && error_password === false && error_retype_password === false) {
           alert("Login Successfull");
           return true;
        } else {
           alert("Please Fill the form Correctly");
           return false;
        }
 
 
     });
  });



 //loading animation
$(window).on("load",function(){
   $(".loader-wrapper").fadeOut("slow");
 });

 
// scroll button
$(document).ready(function(){ 
   $(window).scroll(function(){ 
       if ($(this).scrollTop() > 100) { 
           $('#scroll').fadeIn(); 
       } else { 
           $('#scroll').fadeOut(); 
       } 
   }); 
   $('#scroll').click(function(){ 
       $("html, body").animate({ scrollTop: 0 }, 50); 
       return false; 
   }); 
});


//para appear
function scrollAppear(){
   var introWelcome = document.querySelector('.intro-welcome');
   var introPosition = introWelcome.getBoundingClientRect().top;
   var screenPosition = window.innerHeight / 1.4;

   if(introPosition < screenPosition){
     introWelcome.classList.add('intro-appear');
   }
 }

 window.addEventListener('scroll',scrollAppear);
 