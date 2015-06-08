class HithouseholdController < ApplicationController
  def new
  	 @hhh = Hithousehold.new 
     @household_id=params[:id1]
     @zone_id=params[:id2]
     @disaster_id=params[:id3]
  end

  def edit
    if !params[:id].blank?
      @hhh= Hithousehold.find(params[:id])
    end
  end

 def show
 	@z = params[:id1]
 	@d = params[:id2]
 	@hhh = Hithousehold.where('zone_id=? AND disaster_id=?',@z,@d)
 end

 def show_all
    @hhh = Hithousehold.all
 end

  def create
       @hhh = Hithousehold.new(hithousehold_params)

      if @hhh.save
          flash[:notice] = "New Affected Household Record was created"
      else
          flash[:notice] = @hhh.errors.full_messages
          
      end
     redirect_to url_for(:controller => :household, :action => :searchhh, :id1 => @hhh.zone_id, :id2=>@hhh.disaster_id)
  end

   def delete
    if !params[:hithousehold].blank?
      @hhh= Hithousehold.find(params[:hithousehold])
      @hhh.destroy
      flash[:notice] = "Affected Household Record was deleted."
    end
    @hhh = Hithousehold.all
    render "show"
  end

  def search
    @value = params[:id]
    @hhh=Hithousehold.where("disaster_id = ?", @value)
    render "show"
  end

  

  def savetable
      if !params[:id].blank?
        @hhh= Hithousehold.find(params[:id])
        @hhh.update_attributes(hithousehold_params)
        flash[:notice] = "New Affected Household Record was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      render "edit"
  end

  private

      def hithousehold_params
       params.require(:hithousehold).permit(:zone_id, :disaster_id, :household_id, :status)
      end
end


