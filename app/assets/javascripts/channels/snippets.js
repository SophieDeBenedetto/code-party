App.snippets = App.cable.subscriptions.create('SnippetsChannel', {
  received: function(data) {
    debugger;
    return $('#snippets').append(this.renderSnippet(data));
  },
  renderSnippet: function(data) {
    debugger;
    return "<p> <b>" + data.user.name + " :</b>" + data.snippet + "</p>";
  }
});