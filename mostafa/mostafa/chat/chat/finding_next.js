/**
 * Created by Mostafa tarek on 2/12/2017.
 */


$('#send').click(function () {
        alert("click done");


        $.ajax(

            {

                url:"sendmsg.php"
                ,
                type:"post"
                ,
                data:
                    {
                        'reveicerid':$("#me").val(),
                        'senerid':$("#to").val(),
                        'msg':$('#msg').val()


                    }
                ,success:function (data)

            {
                alert("done");
            }



            }
        )

    }

);
