class LabsController < ApplicationController

  def index
  end

  def new
    @lab = Lab.new
  end

  def create
    @lab = Lab.create(lab_params)
    @lab.admin = current_user
    @lab.save

    redirect_to labs_path(@lab)
  end

  def show
    @lab = Lab.find(params[:id])
    @snippet = Snippet.new
  end

  private
    def lab_params
      params.require(:lab).permit(:name, :description)
    end
end
