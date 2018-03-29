class Api::ContactsController < ApplicationController
  protect_from_forgery :null_session
  def index
    contacts = Contact.all 
    render json: contacts.as_json, status: 200
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ok_message = "Contact Saved"
      render json: ok_message, status: 200
    else
      err_message = "Sorry there was a problem"
      render json: err_message, status: 500
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end

end
