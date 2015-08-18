$(function(){
  
  submitListener();
})

function submitListener(){
  $("#create-snippet").on("click", function(){
    var htmlLines = ""
   
    $(".CodeMirror-line").each(function(i, line){
      htmlLines = htmlLines + ($(line).clone().html())
    })
    $.ajax({
      url: "/snippets",
      method: "POST",
      data: "html: " + htmlLines
      }).done(function() {
      $( this ).addClass( "done" );
});
  });
}