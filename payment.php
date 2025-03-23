<?php
include_once('./config.php');
if(isset($_POST['payment'])){
    $payment_method = $_POST['pay-method'];
    $B_ID = $_GET['b_id']?? '';
    // $query = "INSERT INTO `payment`(`P_ID`,`B_ID`,`Payment Method`,`Date`) VALUES (null, $B_ID,$payment_method, now())";
    $query = $conn->prepare("INSERT INTO `payment`(`B_ID`,`Payment Method`,`Date`) VALUES ('$B_ID','$payment_method',now())");
   
    $result= $query->execute();
  
    if($result){
        
        echo "<script>
       document.getElementById('popup').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
        </script>";
    }
    else{
        echo "payment failed";
    }
    
}

?>
<!-- <div class="popup" id="popup">
                <div class="popup-content">
                  <h2>Successfully Purchased!</h2>
                  <p>Your order will be stored! Your service has been successfully purchased.</p>
                  <button onclick="openIndex()">OK</button>
                </div>
              </div> -->

              <!-- '<script>
        const cards = document.querySelector(".card-detail");
      const payments = document.querySelector(".payment-info-card select");
      payments.addEventListener("change", (e) => {
        if (
          e.target.value === "credit_card" ||
          e.target.value === "debit_card"
        ) {
          cards.classList.remove("card-hidden");
        } else {
          cards.classList.add("card-hidden");
        }
      });

      function showPopup() {
        document.getElementById("popup").style.display = "block";
        document.getElementById("overlay").style.display = "block";
      }

      function openIndex() {
        window.location.href = "index.html";
      }
        
        
        </script> -->
       
       
