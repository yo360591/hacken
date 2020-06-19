class ContactsController < ApplicationController
  
  def new
  end
  
  def create
    @contacts = Contact.create(contact_params)
  end

  private
  def contact_params
    params.permit(:name, :address, :text)
  end

end