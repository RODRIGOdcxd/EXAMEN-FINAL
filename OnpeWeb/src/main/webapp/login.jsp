<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<section class="vh-100" style="background-color: #B9BDC9;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://sni.org.pe/wp-content/uploads/2018/03/onpe-400x400.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">
                <form>
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">ONPE</span>
                  </div>
                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">INICIAR SESION</h5>
                  <div class="form-outline mb-4">
                    <input type="email" id="form2Example17" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Email address</label>
                  </div>
                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example27" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>
                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="button">Login</button>
                  </div>
                  <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">¿No tienes una cuenta? 
                  <a href="#!" style="color: #393f81;" data-toggle="modal" data-target="signupModal">Register here</a></p>			
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Modal -->	
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content bg-dark">
        <div class="modal-header">
          <h3>SignUp</h3>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body p-5">
          <form id="signup-form">
            <label for="email">Email:</label>
            <input type="text" id="signup-email" class="form-control mb-3" placeholder="Title" required>
            <label for="password">Password:</label>
            <input type="password" id="signup-password" class="form-control mb-3" placeholder="Password" required>

            <button type="submit" class="btn btn-primary">Save changes</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="signinModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSignin"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3>SignIn</h3>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="login-form">
            <label for="email">Email</label>
            <input type="text" id="login-email" class="form-control mb-3" placeholder="Title" required>
            <label for="password">Password:</label>
            <input type="password" id="login-password" class="form-control mb-3" placeholder="Password" required>
            <button type="submit" class="btn btn-success w-100 mb-4">Login</button>
            <button type="button" class="btn btn-info" id="googleLogin">Google</button>
            <button type="button" class="btn btn-primary" id="facebookLogin">Facebook</button>
            <button type="button" class="btn btn-dark" id="githubLogin">Github</button>
          </form>
        </div>
      </div>
    </div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
	<script src="js/script.js" type="module"></script>
	<script >
	  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.19.1/firebase-app.js";
	  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.19.1/firebase-analytics.js";
	  const firebaseConfig = {
	    apiKey: "AIzaSyBOWyVNGri9cWAKTR9kA-N1CCmCh_IGbjM",
	    authDomain: "onpe-e99d3.firebaseapp.com",
	    projectId: "onpe-e99d3",
	    storageBucket: "onpe-e99d3.appspot.com",
	    messagingSenderId: "538635887233",
	    appId: "1:538635887233:web:68084cc340b07432ace380",
	    measurementId: "G-W40PC5WY58"
		  };
		  // Initialize Firebase
		  const app = initializeApp(firebaseConfig);
		  const analytics = getAnalytics(app);
	</script>
</body>
</html>