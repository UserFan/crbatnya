class StaticPagesController < ApplicationController
  def home
    add_breadcrumb "Главная", root_path
  end
  
  def about
  	add_breadcrumb "Главная", root_path
    add_breadcrumb "О больнице", about_path
  end

  def list_drugs
  	add_breadcrumb "Главная", root_path
  	add_breadcrumb "Перечень жизненно необходимых и важнейших лекарственных препаратов", list_drugs_path
  end

  def preferential_drugs
    add_breadcrumb "Главная", root_path
  	add_breadcrumb "Льготное обеспечение лекарственными препаратами", preferential_drugs_path
  end
  
  def guarantee_program
    add_breadcrumb "Главная", root_path
  	add_breadcrumb "Программа государственных гарантий", guarantee_program_path  	
  end
  
  def insurance_company
    add_breadcrumb "Главная", root_path
  	add_breadcrumb "Адреса и контакты страховых компаний", insurance_company_path
  end


end