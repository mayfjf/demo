class HouseholdController < ApplicationController
  def new
    @h = Household.new 
    @zone_id=params[:id]
  end

  def edit
    if !params[:id].blank?
      @h= Household.find(params[:id])
    end
  end

  def search
    @v = params[:id]
    @h=Household.where("zone_id = ?", @v)
    render "show"
  end


  def show
    @h = Household.all
  end

  def index
  if params[:search]
    @h = Household.search(params[:search]).order("created_at ASC")
  else
    @h = Household.all.order('created_at ASC')
  end
  render "show"
end

  def delete
    if !params[:household].blank?
      @h= Household.find(params[:household])
      @h.delete
      @h.save
      flash[:notice] = "Household Data was deleted"
    end
   @h=Household.where("zone_id = ?", @h.zone_id)
   render "show"
  end
  

  def create
       @h = Household.new(household_params)
      if @h.save
          flash[:notice] = "New Household Data was created"
      else
          flash[:notice] = @h.errors.full_messages
      end
      @h=Household.where("zone_id = ?", @h.zone_id)
      render "show"
  end

  def savetable
      if !params[:id].blank?
        @h= Household.find(params[:id])
        @h.update_attributes(household_params)
         x=People.where('household_id = ?',@h.id)
            x.all.each do |g|
              g.update_attribute(:condition,@h.condition)
         end
        flash[:notice] = "New Household Data was saved"
      else
        flash[:notice] = "ID not found"
      end
       @h=Household.where("zone_id = ?", @h.zone_id)
      render "show"
  end

  private

      def household_params
       params.require(:household).permit(:name, :people_id, :zone_id, :count, :condition)
      end
end

    
      
    