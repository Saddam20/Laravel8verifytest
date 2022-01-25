//image upload js code start
function previewFile() {
  var preview = document.querySelector('img.upload_image');
  var file    = document.querySelector('input[type=file]').files[0];
  var reader  = new FileReader();

  reader.onloadend = function () {
    preview.src = reader.result;
  }

  if (file) {
    reader.readAsDataURL(file);
  } else {
    preview.src = "http://placehold.it/200x200/&text=Image Preview";
  }
}