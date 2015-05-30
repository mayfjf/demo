class MunicipalController < ApplicationController
  def new
  	@municipality = Municipality.new 
    @muni=params[:id]
  end

  def edit
    if !params[:id].blank?
      @municipality= Municipality.find(params[:id])
    end
  end

  def delete
    if !params[:municipality].blank?
      @municipality= Municipality.find(params[:municipality])
      @municipality.delete
      @municipality.save
      flash[:notice] = "Municipal Data was deleted"
    end
    @municipality = Municipality.all
      render "show"
  end

  def show
    @municipality = Municipality.all
  end

  def create

      @municipality = Municipality.new(municipality_params)
      if @municipality.save
          flash[:notice] = "New Municipality Data was saved"
      else
          flash[:notice] = @municipality.errors.full_messages
          
      end
      @municipality = Municipality.where("id LIKE ?",@municipality.id)
      render "show"
  
   end

   def user_view
  	@municipality = Municipality.where("id LIKE ?", params[:id])
    render "show"
  end

  def name
      
  end

  def savetable
      if !params[:id].blank?
           @municipality= Municipality.find(params[:id])
           @municipality.update_attributes(municipality_params)
        if @municipality.save
           flash[:notice] = "New Municipal Data was updated and saved"
        else
           flash[:notice] = @municipality.errors.full_messages
        end
      end
      @municipality = Municipality.where("id LIKE ?",@municipality.id)
      render "show"

  end

  def showdetails
    if !params[:id].blank?
     @municipality= Municipality.find(params[:id])
    end
  end


   private

      def municipality_params
        params.require(:municipality).permit(:name, :people_id, :area, :population, :livestock, :agri, :commercial, :infra )
      end

end
