class SnippetsController < ApplicationController

  def create
    @snippet = Snippet.create(snippet_params)
    @snippet.user = current_user
    @snippet.lab = Lab.find(params[:snippet][:lab])
    @snippet.save
   ActionCable.server.broadcast 'snippets',
    snippet: @snippet.content,
    user: @snippet.user

    head :ok
  end

  private

    def snippet_params
      params.require(:snippet).permit(:content)
    end

    # def snippet_lab
    #   params.require(:snippet).permit(:lab)
    # end
end
