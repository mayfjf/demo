class ZoneController < ApplicationController
  
  def new
    @z = Zone.new 
    @bar_id=params[:id]
  end

  def edit
    if !params[:id].blank?
      @z= Zone.find(params[:id])
    end
  end

  def show
    @z = Zone.all
  end

  def show_user
    @z = Zone.all
  end

 def search
    @value = params[:id]
    @z=Zone.where("barangay_id = ?", @value)
    render "show"
  end


def index
  if params[:search]
    @z = Zone.search(params[:search]).order("created_at ASC")
  else
    @z = Zone.all.order('created_at ASC')
  end
  render "show_user"
end



  
  def delete
    if !params[:zone].blank?
      @z= Zone.find(params[:zone])
      @z.destroy
      flash[:notice] = "Zone Data was deleted."
    end
    @z=Zone.where("barangay_id = ?",@z.barangay_id)
      render "show"
  end
  

  def create
      @z = Zone.new(zone_params)
      if @z.save
          flash[:notice] = "New Zone Data was created"
      else
          flash[:notice] = @z.errors.full_messages
          
      end
      @z=Zone.where("barangay_id = ?",@z.barangay_id)
      render "show"
  end

  def savetable
      if !params[:id].blank?
        @z= Zone.find(params[:id])
        @z.update_attributes(zone_params)
        flash[:notice] = "New Zone Data was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      @z=Zone.where("barangay_id = ?",@z.barangay_id)
      render "show"
  end

  def showdetails
    if !params[:id].blank?
     @z= Zone.find(params[:id])
    end
  end

  private

      def zone_params
       params.require(:zone).permit(:name,:barangay_id, :area, :population, :livestock, :agri, :commercial, :infra)
      end

end
