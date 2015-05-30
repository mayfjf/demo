class PagesController < ApplicationController
  def about
  end

  def bestroute
  end

  def biggmap
  end

  def map
  end

  def viewroutes
  end

  def contact
  end

  def name
    @mun= Municipality.find(params[:id])
  end
#-----------------------------------------------------PASSCODES COMMANDS--------------------------------------------------------------------------------------------------
  def show
    @passcode = Passcode.all
  end

  def new
    @passcode = Passcode.new 
  end

  def delete
    if !params[:passcode].blank?
      @passcode= Passcode.find(params[:passcode])
      @passcode.delete
      @passcode.save
      flash[:notice] = "Passcode Data was deleted"
    end
    @passcode = Passcode.all
    render "show"
  end


  def create
       @passcode = Passcode.new(passcode_params)
      if @passcode.save
          flash[:notice] = "New passcode was saved"
      else
          flash[:notice] = @passcode.errors.full_messages
          
      end
      render "new"
  
   end

  def passcode
  end

   def authenticate
   @m=params[:municipal_id] 
   @b=params[:barangay_id]
   @p=params[:pass]
   @passcode=Passcode.where(municipal_id:params[:municipal_id], barangay_id:params[:barangay_id], pass:params[:pass])
    if @passcode.exists?
    flash[:notice] = "passcode found"
    render "user_control"
    else
      flash[:notice] = "passcode not found"
      redirect_to(:action => "passcode") and return 
    end
     
  end

  def user_control
  end

    private

      def passcode_params
       params.require(:passcode).permit(:municipal_id, :barangay_id, :pass)
      end
  
end
