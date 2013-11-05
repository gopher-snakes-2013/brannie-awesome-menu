class MenusController < ApplicationController
  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def create
    @menu = Menu.new
    @menu.name = params[:menu][:name]
    @menu.save
    redirect_to root_path
  end

end