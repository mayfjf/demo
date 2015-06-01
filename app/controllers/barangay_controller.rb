class BarangayController < ApplicationController
  
  def new
    @bar = Barangay.new
    @muni=params[:id] 
  end

  def edit
    if !params[:id].blank?
      @bar= Barangay.find(params[:id])
    end
  end

  def show
    @bar = Barangay.all
  end

  def search
    @value = params[:id]
    @bar=Barangay.where("Municipality_id = ?", @value)
    render "show"
  end

  def user_view
    @bar = Barangay.where("id = ?", params[:id])
    render "show"
  end

  def index
  if params[:search]
    @bar = Barangay.search(params[:search]).order("created_at ASC")
  else
    @bar = Barangay.all.order('created_at ASC')
  end
  render "show"
  end

  
  def delete
     if !params[:barangay].blank?
      @bar= Barangay.find(params[:barangay])
      @bar.destroy
      @bar.save
      flash[:notice] = "Barangay Data was deleted"
     end
     @bar=Barangay.where("Municipality_id = ?", @bar.municipality_id)
    render "show"
    
  end

  

  def create
       @bar = Barangay.new(barangay_params)
      if @bar.save
          flash[:notice] = "New Barangay Data was saved"
      else
          flash[:notice] = @bar.errors.full_messages
          
      end
      @bar=Barangay.where("Municipality_id = ?", @bar.municipality_id)
      render "show"
  
   end

  def savetable
      if !params[:id].blank?
        @bar= Barangay.find(params[:id])
         @bar.update_attributes(barangay_params)
      if @bar.save
        flash[:notice] = "New Barangay Data was updated and saved"
      else
        flash[:notice] = @bar.errors.full_messages
      end
    end
      @bar=Barangay.where("Municipality_id = ?", @bar.municipality_id)
      render "show"
  end

  def showdetails
    if !params[:id].blank?
     @bar= Barangay.find(params[:id])
    end
  end


  private

      def barangay_params
       params.require(:barangay).permit(:name, :people_id, :main_livelihood, :area, :municipality_id, :rescue_resources, :hazard_id, :population, :livestock, :agri, :commercial, :infra)
      end

end
