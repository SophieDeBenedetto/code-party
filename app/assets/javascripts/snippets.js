$(function(){
  
  submitListener();
})

function submitListener(){
  $("#create-snippet").on("click", function(){
    debugger;
    var htmlLines = ""
   
    $(".CodeMirror-line").each(function(i, line){
      debugger;
      htmlLines = htmlLines + ($(line).clone().html())
    })
    debugger;
    $.ajax({
      url: "/snippets",
      method: "POST",
      data: $(".CodeMirror-code")
      }).done(function() {
      $( this ).addClass( "done" );
});
  });
}