class HitController < ApplicationController
  prawnto :prawn => { :top_margin => 75 }
  def new
  	 @hit = Hit.new 
     @h=params[:id]
  end

  def edit
    if !params[:id].blank?
      @hit= Hit.find(params[:id])
    end
  end

 def show
    @hit = Hit.all
 end

 def show_only
    @hit = Hit.all
 end

def show_all
    @hit = Hit.all
 end

 def create
       @hit = Hit.new(hit_params)

      if @hit.save
          flash[:notice] = "New Affected Zone Record was created"
      else
          flash[:notice] = @hit.errors.full_messages
          
      end
      @hit = Hit.where('zone_id = ?', @hit.zone_id)
      render "show_user_view"
  end

   def delete
    if !params[:hit].blank?
      @hit= Hit.find(params[:hit])
      @hit.destroy
      flash[:notice] = "Affected Zone Record was deleted."
    end
    @hit = Hit.all
    render "show"
  end

  def search
    @value = params[:id]
    @hit=Hit.where("disaster_id = ?", @value)
    render "show"
  end

  def savetable
      if !params[:id].blank?
        @hit= Hit.find(params[:id])
        @hit.update_attributes(hit_params)
        flash[:notice] = "New Affected Zone record was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      render "edit"
  end

  def report
     if !params[:id].blank?
       @hit= Hit.find(params[:id])
     end
  end

  def reportview
     if !params[:id].blank?
     @hit= Hit.find(params[:id])
   end
  end

  def support
     if !params[:id].blank?
     @hit= Hit.find(params[:id])
     end
  end

  
   private

      def hit_params
       params.require(:hit).permit(:zone_id, :disaster_id, :effect1, :effect2, :effect3, :dlifeline1, :dlifeline2, :dlifeline3, :livestock, :agri, :commerce, :infra, :dead, :missing, :injured, :displaced, :relocated, :good)
      end
end
