class DisasterController < ApplicationController
  prawnto :prawn => { :top_margin => 75 }
  def new
  	 @d = Disaster.new 
  end

  def edit
    if !params[:id].blank?
      @d= Disaster.find(params[:id])
    end
  end

  def show
    @d = Disaster.all
  end

  def user_view
    @d = Disaster.where("created_at >= ?", Time.zone.now.beginning_of_day)
    render "report_hit"
  end

  def disaster_report
    if !params[:id].blank?
     @d= Disaster.find(params[:id])
    else
      flash[:notice] = "ID not found"
    end
  end


  def create
       @d = Disaster.new(disaster_params)

      if @d.save
          flash[:notice] = "New Disaster Record was created"
      else
          flash[:notice] = @d.errors.full_messages
          
      end
      @d = Disaster.where("created_at >= ?", Time.zone.now.beginning_of_day)
      render "report_hit"
  end

   def delete
    if !params[:disaster].blank?
      @d= Disaster.find(params[:disaster])
      @d.destroy
      flash[:notice] = "Disaster Record was deleted."
    end
    @d = Disaster.all
    render "show"
  end

  def index
  if params[:search]
    @d = Disaster.search(params[:search])
  else
    @d = Disaster.all
  end
  render "show"
end

def reportview
     if !params[:id].blank?
     @d= Disaster.find(params[:id])
   end
  end



  def savetable
      if !params[:id].blank?
        @d= Disaster.find(params[:id])
        @d.update_attributes(disaster_params)
        flash[:notice] = "New Disaster record was updated and saved"
      else
        flash[:notice] = "ID not found"
      end
      @d = Disaster.all
      render "show"
  end

  def disaster_report
     if !params[:id].blank?
     @d= Disaster.find(params[:id])
     @zc = params[:zone_count]
     @hc = params[:household_count]
     @dead = params[:dead]
     @missing = params[:missing]
     @injured = params[:injured]
     @displaced = params[:displaced]
     @relocated = params[:relocated]
     @good = params[:good]
     @ptotal = params[:ptotal]
     @live = params[:livestock]
     @agri = params[:agri]
     @commerce = params[:commerce]
     @infra = params[:infra]
     @ctotal = params[:ctotal]
     @hazard = params[:hazard]

     respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @d }
      format.pdf { render :layout => false } # Add this line
    end
     end
  end

   private

      def disaster_params
       params.require(:disaster).permit(:hazard_id, :date, :details)
      end
end
