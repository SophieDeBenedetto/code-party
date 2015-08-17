class SnippetsController < ApplicationController

  def create
    binding.pry
    kit   = IMGKit.new(html)
    img   = kit.to_img(:png)
    file  = Tempfile.new(["template_#{model.id}", 'png'], 'tmp',
                         :encoding => 'ascii-8bit')
    file.write(img)
    file.flush
    model.snapshot = file
    model.save
    file.unlink
   #  @snippet = Snippet.create(snippet_params)
   #  @snippet.user = current_user
   #  @snippet.lab = Lab.find(params[:snippet][:lab])
   #  @snippet.save
   # ActionCable.server.broadcast 'snippets',
   #  snippet: @snippet.content,
   #  user: @snippet.user

   #  head :ok
  end

  private

    def snippet_params
      params.require(:snippet).permit(:content)
    end

    # def snippet_lab
    #   params.require(:snippet).permit(:lab)
    # end
end
