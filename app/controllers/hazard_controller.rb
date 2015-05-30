class HazardController < ApplicationController
  def new
    @hz = Hazard.new 
  end

  def edit
    if !params[:id].blank?
      @hz= Hazard.find(params[:id])
    end
  end

  def show
    @hz = Hazard.all
  end

  def delete
    if !params[:hazard].blank?
      @hz=Hazard.find(params[:hazard])
      @hz.delete
      @hz.save
      flash[:notice] = "Hazard Data was deleted"
    end
    @hz = Hazard.all
    render "show"
  end
  

  def create
       @hz =Hazard.new(hazard_params)
      if @hz.save
          flash[:notice] = "New Hazard Data was created"
      else
          flash[:notice] = @hz.errors.full_messages
          
      end
      render "new"
  
   end

  def savetable
      if !params[:id].blank?
        @hz= Hazard.find(params[:id])
         @hz.update_attributes(hazard_params)
        flash[:notice] = "New Hazard Data was saved"
      else
        flash[:notice] = @hz.errors.full_messages
      end
      render "edit"
  end

  private

      def hazard_params
       params.require(:hazard).permit(:description)
      end
end
