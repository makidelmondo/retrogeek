class SoftwaresController < ApplicationController
  def index
    @softwares = Software.all
  end

end
