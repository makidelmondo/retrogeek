class SoftwaresController < ApplicationController
  def index
    @softwares = Software.all
  end

  def new
    @softwares = Software.new
  end

  def create
  end

end
