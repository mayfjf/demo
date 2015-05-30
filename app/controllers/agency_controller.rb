class AgencyController < ApplicationController
  def new
    @a = Agency.new 
  end

  def edit
    if !params[:id].blank?
      @a= Agency.find(params[:id])
    end
  end

  def show
    @a = Agency.all
  end

  def delete
    if !params[:agency].blank?
      @a= Agency.find(params[:agency])
      @a.delete
      @a.save
      flash[:notice] = "Agency Data was deleted"
    end
    @a = Agency.all
    render "show"
  end
  

  def create
       @a = Agency.new(agency_params)
      if @a.save
          flash[:notice] = "New Agency Data was created"
      else
          flash[:notice] = @a.errors.full_messages
          
      end
     @a = Agency.all
     render "show"
  
   end

  def savetable
      if !params[:id].blank?
        @a= Agency.find(params[:id])
         @a.update_attributes(agency_params)
        flash[:notice] = "Agency Data was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
       @a = Agency.all
        render "show"
  end

  private

      def agency_params
       params.require(:agency).permit(:name, :contactnum, :head, :prioritynum, :reponsibilities)
      end
end
