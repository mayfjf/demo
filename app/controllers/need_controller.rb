class NeedController < ApplicationController
  def new
    @n= Need.new 
  end

  def edit
    if !params[:id].blank?
      @n= Need.find(params[:id])
    end
  end

  def show
    @n = Need.all
  end

  def delete
    if !params[:need].blank?
      @n= Need.find(params[:need])
      @n.delete
      @n.save
      flash[:notice] = "Needs Data was deleted"
    end
    @n = Need.all
    render "show"
  end

  def create
       @n = Need.new(need_params)
      if @n.save
          flash[:notice] = "New Needs Data was created"
      else
          flash[:notice] = @n.errors.full_messages
          
      end
     @n = Need.all
     render "show"
  end

   def savetable
      if !params[:id].blank?
        @n= Need.find(params[:id])
         @n.update_attributes(need_params)
        flash[:notice] = "Needs Data was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
       @n = Need.all
        render "show"
  end

  private

      def need_params
       params.require(:need).permit(:priority, :code, :description, :agency_id)
      end

end
