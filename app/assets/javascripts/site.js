$(document).on("page:change", function(){
  var template = $("#new_lineitems").html(),
      count = 0;
  $('#button_add_lineitem').on('click', function(e) {
    var newTextBoxDiv = $(document.createElement('div')).addClass("next_elem");
    newTextBoxDiv.after().html(template.replace('[' + count + ']', '[' + (count+1) + ']'));
    newTextBoxDiv.appendTo("#new_lineitems");
    count++;

  });
});
