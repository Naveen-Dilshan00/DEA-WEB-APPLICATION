<%-- 
    Document   : success1
    Created on : Apr 29, 2024, 2:10:39 PM
    Author     : pabas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>success</title>
    <style> 
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
     
      }
    section {
      position: fixed;
      height: 100%;
      width: 100%;
      background: #e3f2fd;
     }
    button {
     font-size: 18px;
     font-weight: 400;
     color: #fff;
     padding: 14px 22px;
     border: none;
     background: #4070f4;
     border-radius: 6px;
     cursor: pointer;
    }
    button:hover {
     background-color: #265df2;
    }
    button.s-modal,.modal-box {
      position: fixed;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
    section.active .s-modal {
     display: none;
    }
    .overlay {
      position: fixed;
      height: 100%;
      width: 100%;
      opacity: 0;
      pointer-events: none;
    }
    section.active .overlay {
      opacity: 1;
      pointer-events: auto;
    }
   .modal-box {
      display: flex;
      flex-direction: column;
      align-items: center;
      max-width: 380px;
      width: 100%;
      padding: 30px 20px;
      border-radius: 24px;
      background-color: #fff;
      opacity: 0;
      pointer-events: none;
      transition: all 0.3s ease;
      
    }
    section.active .modal-box {
      opacity: 1;
      pointer-events: auto;
      
    }
    .modal-box i {
      font-size: 80px;
      color: #4070f4;
    }
    .modal-box h2 {
      margin-top: 20px;
      font-size: 25px;
      font-weight: 500;
      color: #333;
    }
    .modal-box h3 {
      font-size: 16px;
      font-weight: 400;
      color: #333;
      text-align: center;
    }
    .modal-box .buttons {
      margin-top: 25px;
    }
    .modal-box button {
      font-size: 14px;
      padding: 6px 12px;
      margin: 0 10px;
    }
</style>
</head>
<body>
   <section>
      <button class="s-modal">OK</button>
      <span class="overlay"></span>

      <div class="modal-box">
        <i class='bx bx-check-circle'></i>
        <h2>Successful</h2>
        <h3>You have successfully entered the details.</h3>

        <div class="buttons">
          <button class="close-btn">Close</button>
          <button>Next</button>
        </div>
      </div>
    </section>

    <script>
      const section = document.querySelector("section"),
        overlay = document.querySelector(".overlay"),
        showBtn = document.querySelector(".s-modal"),
        closeBtn = document.querySelector(".close-btn");

      showBtn.addEventListener("click", () => section.classList.add("active"));

      overlay.addEventListener("click", () =>
        section.classList.remove("active")
      );

      closeBtn.addEventListener("click", () =>
        section.classList.remove("active")
      );
    </script> 
</body>
</html>
