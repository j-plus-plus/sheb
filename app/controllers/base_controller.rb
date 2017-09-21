class BaseController < ApplicationController
  def index
    @bases = Base.all
  end

  def new
    @new_base = Base.new
  end

  def create
    @new_base = Base.new(base_params)
    if @new_base.save
      redirect_to '/bases'
    else
      render 'new'
    end
  end

  private

  def base_params
    params.require(:base).permit(:host, :name, :username, :password, :port)
  end
end
