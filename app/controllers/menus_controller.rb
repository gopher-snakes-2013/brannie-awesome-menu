class MenusController < ApplicationController
  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def create
    @menu = Menu.new
    @menu.name = params[:menu][:name]
    if @menu.save
      redirect_to root_path
    else
      p flash[:errors] = @menu.errors.full_messages
      redirect_to root_path
    end
  end

end