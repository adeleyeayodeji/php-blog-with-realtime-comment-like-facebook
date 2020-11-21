<div class="footer">
    <p>Copyright &copy; 2019 BiggiDroid Team - <a style="color: white;text-decoration: none;" href="https://www.adeleyeayodeji.com">Adeleye Ayodeji</a> | <a style="color: white;text-decoration: none;" href="admin/">Admin Panel</a></p>
</div>
</div>
<?php if (isset($_SESSION["admin"])) { ?>
    <a href="admin/logout.php" class="float" target="_blank">
        <i class="fa fa-sign-out my-float"></i>
    </a><?php
    } ?>
<style>
    .floatingRectangle {
        z-index: 1;
        position: fixed;
        left: 0;
        right: 0;
        height: 94px;

        padding: 0;
        width: 280px;
        margin-left: 25px;
        background: aliceblue;
        padding: 10px;
        bottom: 100px;
        overflow: hidden;

    }

    .searlist:hover {
        box-shadow: 1px 1px 2px 2px blueviolet;
    }
</style>
<audio src="sound/1.mp3" id="audio" crossOrigin="anonymous"></audio>
<script type="text/javascript">
    const socket = io.connect("http://localhost:3000", {
        transports: ['polling', 'websocket']
    });


    function showAlert(message, name, link, image, title) {
        let token = Math.floor(Math.random() * 10000000) + 1;
        $(`<div id="${token}" class="floatingRectangle" style="display:none;">
        <a style="color: white;font-weight: normal;" href="${link}">
        <div class="searlist" style="background:url(${image});height: 89px;width: 131px;background-position: center top;background-size: cover;background-repeat: no-repeat;margin-left: 2px;float: left;margin-right: 10px;border: 2px solid blueviolet;"></div>
        <p style="text-align: left;background:transparent;color:black;margin-top: 0px;"><b>${name}</b> made a comment in <b>${title}</b><br>just now</p>
    </a>
		</div>`).appendTo(document.body);

        document.getElementById("audio").play();

        $("#" + token).fadeIn(() => {
            setTimeout(() => {
                $("#" + token).animate({
                    bottom: "250px",
                }, 5000, function() {
                    $(this).fadeOut().remove();
                });
            }, 3000);
        });

    }



    $(document).ready(function() {

        $("#send").click(function() {
            // alert(this.value);
            var name = $("#name").val();
            var postid = $("#postid").val();
            var message = $("#message_wa").val();
            // console.log(name+postid);

            //Validation begin
            if (name == "") {
                $("#name").notify("Your name should not be empty", {
                    position: "top"
                }, "error");
            } else if (message == "") {
                $("#message_wa").notify("Comment is required", {
                    position: "top"
                }, "error");
            } else {
                //Send to database after validation
                $.ajax({
                    type: "post",
                    url: "include/ajaxcomment.php",
                    data: {
                        "submit": 1,
                        "name": name,
                        "postid": postid,
                        "message": message
                    },
                    beforeSend: () => {
                        $("#send").val("Submitting . . . ");
                    },
                    success: function(result) {
                        $("#send").val("Submitted");
                        setTimeout(() => {
                            $("#send").val("Submit");
                        }, 3000);
                        var name = $("#name").val();
                        var message = $("#message_wa").val();
                        socket.emit("message", {
                            "username": name,
                            "message": message,
                            "commentid": postid,
                            "image": "<?php echo (isset($_SESSION['post'])) ? $_SESSION['post']['img'] : ''; ?>",
                            "link": "<?php echo (isset($_SESSION['post'])) ? $_SESSION['post']['link'] : ''; ?>",
                            "title": "<?php echo (isset($_SESSION['post'])) ? $_SESSION['post']['title'] : ''; ?>"


                        });
                        // console.log("Am working");
                        var name = $("#name").val("");
                        var message = $("#message_wa").val("");
                        $("#send").notify(result, "success");
                    }
                })


            }
        });

        socket.on("broadcast", (response) => {
            let {
                type
            } = response;

            let {
                data
            } = response;
            if (type == "insert") {
                $("<p style='font-family: calibri;padding: 3px;display:none;'><span style='background: blueviolet;color: white;padding: 3px;font-weight:bold;font-family: calibri;'>" + data.username + ":  </span> " + data.message + "</p><hr>").appendTo(".commentid" + data.commentid).show('slow');
            }

        });

        socket.on("alert", (response) => {
            let {
                type
            } = response;

            let {
                data
            } = response;
            if (type == "alert") {
                showAlert(data.message, data.username, data.link, data.image, data.title);
            }

        });
    });
</script>
</body>

</html>