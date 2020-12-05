function showPreview(input) {

  if (input.files && input.files[0]) {
    const fileReader = new FileReader();

    fileReader.onload = function (event) {
      $("#preview").attr("src", event.target.result);
    };
    event.target.removeClass();
    fileReader.readAsDataURL(input.files[0]);
  }
  console.log(input)
  console.log(fileReader)
};

export { showPreview };
