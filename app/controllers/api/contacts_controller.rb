class Api::ContactsController < ApplicationController
  def index
    contacts = Contact.all 
    binding.pry
  end

  def create
    
  end

end
