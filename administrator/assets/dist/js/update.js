$(document).ready(function(){
    $("form#update").validate({
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },
            submitHandler: function(form) {
               $('#loadnya').show();
                   $(form).ajaxSubmit({
                          type:"post",
                          url: $(this).attr('action'),
                          //data: $("form#update").serialize(),
                        success: function(data){
                          console.log(data);
                          $('#loadnya').hide();
                              if (data=='good') { 
                          $('.notif_top_up').fadeIn(1000);
                           $(".notif_top_up").fadeOut(500,function(){
                           window.history.back();
                        });
                                
                                //$('.sukses').html(data);
                              } else {
                               
                                 $('.errorna').fadeIn();
                              	//redirect jika berhasil login
                               
                              }
                      }
                    });
            }

        });  


 $("#up_feeder_mhs").validate({
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },

            submitHandler: function(form) {
               $('#loadnya').show();
                   $(form).ajaxSubmit({
                          type: "post",
                          url: $(this).attr('action'),
                          data: $("#up_feeder_mhs").serialize(),
                       //  enctype:  'multipart/form-data'
                        success: function(data){
                          $("#isi_informasi").html(data);
                          $('#informasi').modal('show');
                          
                          $('#loadnya').hide();
                     
                      }
                    });
            }

        });  

  
   $("form#update_mahasiswa").validate({
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },
            submitHandler: function(form) {
               $('#loadnya').show();
                   $(form).ajaxSubmit({
                          type:"post",
                          url: $(this).attr('action'),
                          data: $("form#update_mahasiswa").serialize(),
                        success: function(data){
                          console.log(data);
                          $('#loadnya').hide();
                       
                               $("#isi_informasi2").html(data);
                               $('#informasi2').modal('show');
                                
                                //$('.sukses').html(data);
                            
                      }
                    });
            }

        });

  //special untuk foto
  $("form#upfoto").validate({
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },
            submitHandler: function(form) {
               $('#loadnya').show();
                   $(form).ajaxSubmit({
                          type:"post",
                          url: $(this).attr('action'),
                          data: $("form#upfoto").serialize(),
                        success: function(data){
                        
                          $('#loadnya').hide();
                              if (data=='good') { 
                          $('.notif_top_up').fadeIn(1000);
                              $(".notif_top_up").fadeOut(500,function(){
                           location.reload();
                        });     
                                //$('.sukses').html(data);
                              } else {
                               
                                 $('.errorna').fadeIn();
                                //redirect jika berhasil login
                               
                              }
                      }
                    });
            }

        });  
 //special untuk foto
  $("form#upalb").validate({
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },
            submitHandler: function(form) {
               $('#loadnya').show();
                   $(form).ajaxSubmit({
                          type:"post",
                          url: $(this).attr('action'),
                          data: $("form#upalb").serialize(),
                        success: function(data){
                         
                          $('#loadnya').hide();
                              if (data=='good') { 
                          $('.notif_top_up').fadeIn(1000);
                           $(".notif_top_up").fadeOut(2000);
                                
                                //$('.sukses').html(data);
                              } else {
                               
                                 $('.errorna').fadeIn();
                                //redirect jika berhasil login
                               
                              }
                      }
                    });
            }

        }); 

    $('body').on('click', '.edit_album', function() {

      event.preventDefault();
      var currentBtn = $(this);

      $('#album-modal')
          .modal({ keyboard: false })
          .one('click', '#save', function (e) {
          
            $('.title_album').html($("#nama_album").val());
             $('.desc_album').html($("#desc_album").val());
            
            $('#album-modal').modal('hide');


          });

            
       
    });

    $('body').on('click', '.up_foto', function() {
   
      event.preventDefault();
      var currentBtn = $(this);

      desc = currentBtn.attr('data-desc');
      id = currentBtn.attr('data-id');

      $('#desc_foto').attr("value",desc);
      $('#id').attr("value",id);
      $('#foto-modal')
          .modal({ keyboard: false })
          .one('click', '#save', function (e) {
                 
          $('#the_foto_'+id).attr("title",$("#desc_foto").val());
            
            $('#foto-modal').modal('hide');

          });

      
    });

	})