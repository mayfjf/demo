class SenderController < ApplicationController
  def new
    @s = Sender.new 
  end

  def edit
    if !params[:id].blank?
      @s= Sender.find(params[:id])
    end
  end

  def show
    @s = Sender.all
  end

  
 def delete
    if !params[:sender].blank?
      @s= Sender.find(params[:sender])
      @s.destroy
      flash[:notice] = "Sender Data was deleted."
    end
    @s = Sender.all
      render "show"
  end
  

  def create
      @s = Sender.new(sender_params)
      if @s.save
          flash[:notice] = "New Sender Data was created"
      else
          flash[:notice] = @s.errors.full_messages
          
      end
      @s = Sender.all
      render "show"
  end

  def savetable
      if !params[:id].blank?
        @s= Sender.find(params[:id])
        @s.update_attributes(sender_params)
        flash[:notice] = "Sender Data was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      @s = Sender.all
      render "show"
  end

  
  private

      def sender_params
       params.require(:sender).permit(:name)
      end

end

