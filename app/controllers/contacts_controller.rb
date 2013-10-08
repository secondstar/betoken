class ContactsController < ApplicationController
  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to about_index_path, notice: 'Thank you.  A representative will be with you shortly.' }
        # format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        # format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :contact_title, :phone, :url, :project_start_date, :project_estimated_budget, 
        :project_stage, :aspects, :comment)
    end

end