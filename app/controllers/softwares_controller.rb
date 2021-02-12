class SoftwaresController < ApplicationController
  before_action :set_software, only: [:edit, :update, :destroy, :show]
  def index
    @softwares = Software.all
  end

  def new
    @software = Software.new
  end

  def create
    @software = Software.new(software_params)
    if @software.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def set_software
    @software = Software.find(params[:id])
  end

  def software_params
    params.require(:software).permit(:title, :explanation, :hardware_id, :image).merge(user_id: current_user.id)
  end
end
