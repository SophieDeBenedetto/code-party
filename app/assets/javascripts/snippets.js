$(function(){
  
  submitListener();
})

function submitListener(){
  $("#create-snippet").on("click", function(){
    // debugger;
    var htmlLines = ""
   
    $(".CodeMirror-line").each(function(i, line){
      // debugger;
      htmlLines = htmlLines + ($(line).clone().html())
    })
    // debugger;s
    $.ajax({
      url: "/snippets",
      method: "POST",
      data: "html: " + htmlLines
      }).done(function() {
      $( this ).addClass( "done" );
});
  });
}