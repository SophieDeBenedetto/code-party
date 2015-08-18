App.snippets = App.cable.subscriptions.create('SnippetsChannel', {
  received: function(data) {
    return $('#snippets').append(this.renderSnippet(data));
  },
  renderSnippet: function(data) {
   return data
  }
});