class StaticPagesController < ApplicationController
  def home
    add_breadcrumb "Главная", root_path
  end
  
  def about
  	add_breadcrumb "Главная", root_path
    add_breadcrumb "О больнице", about_path
  end
end