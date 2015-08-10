App.snippets = App.cable.subscriptions.create 'SnippetsChannel',
  received: (data) ->
    $('#snippets').append @renderSnippet(data)

  renderSnippet: (data) ->
    "<p><b>[#{data.user}]:</b> #{data.content}</p>"