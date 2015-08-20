$(document).on("page:change", function(){
  $('#button_add_lineitem').on('click', function(e) {
    var count = $(".lineitem").count;
    var newTextBoxDiv = $(document.createElement('div')).attr("id", count+1);
    newTextBoxDiv.after().html('<div class="form-group lineitem"><input type="text" class="form-control lineitem" placeholder="Text input" id="'+count+'"></div>');
    newTextBoxDiv.appendTo(".form-group.lineitem").last();

  });
});