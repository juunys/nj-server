
var initialize_upload = function() {
$(function() {
  $('.directUpload').find("input:file").each(function(i, elem) {
    var fileInput    = $(elem);
    var form         = $(fileInput.parents('form:first'));
    var submitButton = form.find('input[type="submit"]');
    var progressnumber  = $("<p id='progress_number'></p>");
    var div_upload = $("#file_upload").append(progressnumber);
    var progressBar  = $("<div class='bar'></div>");
    var barContainer = $("<div class='progress'></div>").append(progressBar);
    var squareColor = $("#colors-square");

    squareColor.
          css('width', '20px').
          css('height', '20px').
          css('border', '1px solid grey').
          css('background', 'grey');
 
     progressBar.
          css('background', '#66bb6a').
          css('display', 'flex').
          css('width', '0%').  
          html("Aguardando...");


    fileInput.after(barContainer);
    fileInput.fileupload({
      fileInput:       fileInput,
      url:             form.data('url'),
      type:            'POST',
      autoUpload:       true,
      formData:         form.data('form-data'),
      paramName:        'file', // S3 does not like nested name fields i.e. name="user[avatar_url]"
      dataType:         'XML',  // S3 returns XML if success_action_status is set to 201
      replaceFileInput: false,
      progressall: function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        progressBar.css('width', progress + '%');
        var pg = progressnumber.html(progress + '%');
      },
      start: function (e) {
        submitButton.prop('disabled', true);

        progressBar.
          css('background', '#66bb6a').
          css('display', 'flex').
          css('width', '0%').
          html("Carregando...");

      },
      done: function(e, data) {
        submitButton.prop('disabled', false);
        progressBar.html("Upload completo");

        // extract key and generate URL from response
        var key   = $(data.jqXHR.responseXML).find("Key").text();
        var url   = 'https://' + form.data('host') + '/' + key;

        // create hidden field
        var input = $("<input />", { type:'hidden', name: fileInput.attr('name'), value: url })
        form.append(input);
      },
      fail: function(e, data) {
        submitButton.prop('disabled', false);
        console.log(data);
        progressBar.
          css("background", "red").
          html("Failed");
      }
    });
  });
});

};

$(document).on('turbolinks:load', initialize_upload);
$(document).on("cocoon:after-insert", function() {
  $(function() {
   var elem = $('.directUpload').find("input:file").last();
    var fileInput    = $(elem);
    var form         = $(fileInput.parents('form:last'));
    var submitButton = form.find('input[type="submit"]');
    var progressnumber  = $("<p id='progress_number'></p>");
    var div_upload = $("#file_upload").append(progressnumber);
    var progressBar  = $("<div class='bar'></div>");
    var barContainer = $("<div class='progress'></div>").append(progressBar);
    var squareColor = $("#colors-square");

    squareColor.
          css('width', '20px').
          css('height', '20px').
          css('border', '1px solid grey').
          css('background', 'grey');
 
     progressBar.
          css('background', '#66bb6a').
          css('display', 'flex').
          css('width', '0%').  
          html("Aguardando...");


   
      fileInput.after(barContainer);
    fileInput.fileupload({
      fileInput:       fileInput,
      url:             form.data('url'),
      type:            'POST',
      autoUpload:       true,
      formData:         form.data('form-data'),
      paramName:        'file', // S3 does not like nested name fields i.e. name="user[avatar_url]"
      dataType:         'XML',  // S3 returns XML if success_action_status is set to 201
      replaceFileInput: false,
      progressall: function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        progressBar.css('width', progress + '%');
        var pg = progressnumber.html(progress + '%');
      },
      start: function (e) {
        submitButton.prop('disabled', true);

        progressBar.
          css('background', '#66bb6a').
          css('display', 'flex').
          css('width', '0%').
          html("Carregando...");

      },
      done: function(e, data) {
        submitButton.prop('disabled', false);
        progressBar.html("Upload completo");

        // extract key and generate URL from response
        var key   = $(data.jqXHR.responseXML).find("Key").text();
        var url   = 'https://' + form.data('host') + '/' + key;

        // create hidden field
        var input = $("<input />", { type:'hidden', name: fileInput.attr('name'), value: url })
        form.append(input);

        showNestedImage(url);

        function showNestedImage(url) {
          if (url) {
            var name_image =  fileInput.attr('name');
            document.getElementById(name_image).src = url; 
            document.getElementById(name_image).style.width = '100px';   
            document.getElementById(name_image).style.height = '100px';   
          }
        }
      },
      fail: function(e, data) {
        submitButton.prop('disabled', false);
        console.log(data);
        progressBar.
          css("background", "red").
          html("Failed");
      }
    });
});


} );

