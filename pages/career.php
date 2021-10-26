<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Document</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      position: relative;
      height: 100%;
    }

    .mainContainer {
      /* position: absolute; */
      width: 100%;
      /* top: 0;
        left: 0; */
      z-index: 10;
    }

    .topNav {
      background: rgb(202, 202, 202);
      /* top: 10px; */
      /* position: absolute; */
      display: flex;
      align-items: center;
      height: 60px;
      width: 100%;
      /* opacity: 0.1; */
    }

    .company-name {
      color: #ff6f00;
      font-size: 25px;
      font-weight: bolder;
      flex-basis: 1100px;
      margin-left: 10px;
    }

    .topNav a {
      text-decoration: none;
      float: right;
      margin-right: 20px;
      display: block;
      /* background: grey; */
      font-size: 20px;
    }

    .login {
      background: darkblue;
      color: white;
      padding: 8px;
      border-radius: 8px;
    }

    .content {
      /* position: absolute; */
      /* display: flex; */
      /* justify-content: center; */
      /* top: 100px; */
      margin-top: 100px;
      width: 100%;
      padding: 10px;
      height: 600px;
      /* margin-left: 25px; */
      /* margin: 20px; */
      /* background: grey; */
    }

    /* .top-header {
        font-size: 60px;
        font-weight: bold;
        margin: 50px auto;
        display: flex;
        justify-content: center;
      } */

    /* .bottom-header {
        font-size: 30px;
        font-weight: bold;
        display: flex;
        justify-content: center;
      }
       */

    .vacancy {
      border: 2px solid black;
      border-radius: 10px;
      padding: 10px;
    }

    .vacancy h3 {
      margin-bottom: 10px;
    }


    .vacancy p {
      margin-bottom: 25px;
    }

    .apply {
      background: darkblue;
      color: white;
      padding: 8px;
      text-decoration: none;
      border-radius: 8px;
      /* width:300px; */

    }

    .footer {
      background: darkgray;
      padding: 10px;
      /* position: absolute; */
      width: 100%;
      bottom: 0px;
      z-index: 20;
      height: 200px;
      display: flex;
      justify-content: space-between;
    }

    .column-one,
    .column-two,
    .column-three {
      width: 400px;
      /* background: red; */
      padding: 10px;
      display: flex;
      align-content: flex-start;
      align-items: center;
      justify-content: space-between;
      flex-direction: column;
    }
  </style>
</head>

<body>
  <div class="mainContainer">
    <div class="topNav">
      <div class="company-name">NexGen</div>
      <a href="">About</a>
      <a href="">Contact</a>
      <a href="">Careers</a>
      <a href="./login.php" class="login">Login</a>
    </div>
    <div class="content">
      <div class="vacancy">
        <h3>Software Engineer Java</h3>
        <p>SOFTWARE ENGINEEROn Demand for an European clientAspire to inspire ?It`s your turn to make a difference !Content
          Management & SolutionsYou are :We`re looking for Angular / SpringBoot engineers to join an existing team of engineers
          working for a large EU client This is a great opportunity for a fast learner to learn and work on the full range of
          software development life cycle including customer handling , DevOps etcYou need to be equipped with strong team playing
          skills and excellent communication skills that will assure an effective working relationship with our overseas teams
          .Your skills :Angular ( 7+ is preferred ) Java ( 11+ is preferred ) Spring Boot Micro - services experience is a plusTo
          apply </p>


        <a href="./addcandidate.php" class="apply ">apply</a>

      </div>


    </div>
    <!-- <div class="vacancy"></div> -->
  </div>
  </div>
  <div class="footer">
    <div class="column-one">
      <div class="company-name">NexGen</div>

      <div>
        <h3>
          We provide unrivaled software solutions with passion to bring your
          business to the next level.
        </h3>
      </div>
    </div>
    <div class="column-two">
      <h3>QUICK LINKS</h3>
      <a href="">About</a>
      <a href="">Contact</a>
      <a href="">Careers</a>
    </div>
    <div class="column-three">
      <h2>Follow Us</h2>
    </div>
  </div>
</body>

</html>