class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      flash[:success] = "Object successfully created"
      redirect_to @contact
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private
  def params_contact
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
  
end
