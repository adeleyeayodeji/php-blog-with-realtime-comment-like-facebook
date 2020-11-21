<?php
    
    if (isset($_POST["send"])) {
      $to = $_POST["to"];
      $from = $_POST["from"];
      $message = $_POST["message"];
      //open connection
              $ch = curl_init();

              //set the url, number of POST vars, POST data
              curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
              curl_setopt($ch, CURLOPT_USERPWD, 'AC5b1ddc991b3d65ae6167a5b4cbb2adcd:c70a52894e5ac12461bbb658e9274ed9');
              curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_ANY); 
              curl_setopt($ch, CURLOPT_URL, sprintf('https://api.twilio.com/2010-04-01/Accounts/AC5b1ddc991b3d65ae6167a5b4cbb2adcd/Messages.json', 'AC5b1ddc991b3d65ae6167a5b4cbb2adcd'));
              curl_setopt($ch, CURLOPT_POST, 3);
              curl_setopt($ch, CURLOPT_POSTFIELDS, 'To='.$to.'&From='.$from.'&Body='.$message);

              //execute post
              $result = curl_exec($ch);
              $result = json_decode($result);
            
              //close connection
              curl_close($ch);

              if($result) {
               $success = "Message sents";
              }else{
                $error = "Sent failed";
              } 
    }

?>
<!DOCTYPE html>
<html>
<head>
  <title>Send message to your phone</title>
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

</head>
<body>
  <div class="container">
    <div class="header" style="padding: 20px;">
      <h2 style="text-align: center;">A Simple PHP SMS API</h2>
    </div>
    <div class="main">
        <form method="post" action="">
          <div class="form-group">
            <label>
              From: <code>[Your Valid Purchased Number]</code>
            </label>
            <input type="text" name="from" class="form-control" required="">
          </div>
          <div class="form-group">
            <label>To: <code>[Any International Number]</code></label>
            <input type="text" name="to" class="form-control" required="">
          </div>
          <div class="form-group">
            <label>Message</label>
            <textarea class="form-control" required="" name="message"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" name="send" value="Send Message" class="btn btn-large btn-primary">
          </div>
          <?php
            if (isset($success)) {
              ?>
              <div class="alert alert-success" role="alert">
                Message sents to <?php echo $to; ?>
              </div>
              <?php
            }

             if (isset($error)) {
              ?>
              <div class="alert alert-danger" role="alert">
                Failed to send message to <?php echo $to; ?>
              </div>
              <?php
            }
          ?>
        </form>
    </div>
  </div>

</body>
</html>