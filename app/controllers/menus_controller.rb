class MenusController < ApplicationController
  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def create
    @menu = Menu.new
    @menu.name = params[:menu][:name]
    if @menu.save
      p "THIS IS AJAX"
      render :json => { menu: @menu }
      # redirect_to root_path
    else
      flash[:errors] = @menu.errors.full_messages
      redirect_to root_path
    end
  end

end