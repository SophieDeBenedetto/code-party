class SnippetsController < ApplicationController

  def create
    binding.pry
    @snippet = Snippet.create(snippet_params)
    @snippet.user = current_user
    @snippet.lab = Lab.find(params[:snippet][:lab])
    @snippet.save
  end

  private

    def snippet_params
      params.require(:snippet).permit(:content)
    end

    # def snippet_lab
    #   params.require(:snippet).permit(:lab)
    # end
end
