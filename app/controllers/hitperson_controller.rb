class HitpersonController < ApplicationController

  def new
  	 @hp = Hitperson.new 
  	 @s= params[:id]
     @householdid=params[:household_id]
     @age=params[:age]
     @disasterid=params[:disaster_id]
  end

  def edit
    if !params[:id].blank?
      @householdid=params[:household_id]
      @disasterid=params[:disaster_id]
      @hp= Hitperson.find(params[:id])
    end
  end

 def show
 	@h = params[:id1]
 	@d = params[:id2]
 	@hp = Hitperson.where('household_id=? AND disaster_id=?',@h,@d)
 end

 def show_all
    @hp = Hitperson.all
 end

  def create
       @hp = Hitperson.new(hitperson_params)

      if @hp.save
          flash[:notice] = "New Affected Person Record was created"
      else
          flash[:notice] = @hp.errors.full_messages
          
      end
     redirect_to url_for(:controller => :people, :action => :searchp, :id1 => @hp.household_id, :id3=>@hp.disaster_id)
  end

   def delete
    if !params[:hitperson].blank?
      @hp= Hitperson.find(params[:hitperson])
      @hp.destroy
      flash[:notice] = "Affected Person's Record was deleted."
    end
    @h = @hp.household_id
    @d = @hp.disaster_id
    @hp = Hitperson.where('household_id=? AND disaster_id=?',@h,@d)
    render "show"
  end

  def search
    @value = params[:id]
    @hp=Hitperson.where("disaster_id = ?", @value)
    render "show"
  end

  

  def savetable
      if !params[:id].blank?
        @hp= Hitperson.find(params[:id])
        @hp.update_attributes(hitperson_params)
        flash[:notice] = "New Affected Person's Record was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      render "edit"
  end

  private

      def hitperson_params
       params.require(:hitperson).permit(:household_id, :disaster_id, :people_id,:age, :status)
      end
end



