class ImpactController < ApplicationController

  def new
  	 @d = Disaster.new 
  	 @zone_count=params[:zone_count]
  	 @disaster_id=params[:disaster_id]
  	 @household_count=params[:household_count]
  	 @dead=params[:dead]
  	 @missing=params[:missing]
  	 @injured=params[:injured]
  	 @displaced=params[:displaced]
  	 @relocated=params[:relocated]
  	 @good=params[:good]
  	 @ptotal=params[:ptotal]
  	 @livestock=params[:livestock]
  	 @agri=params[:agri]
  	 @commerce=params[:commerce]
  	 @infra=params[:infra]
  	 @ctotal=params[:ctotal]
     @atotal=params[:atotal]

  end

  def create
       @i= Impact.new(impact_params)

      if @i.save
          flash[:notice] = "New Impact Record was created"
      else
          flash[:notice] = @i.errors.full_messages
          
      end
      redirect_to url_for(:controller => :disaster, :action => :show, :id => @disaster_id)
  end

  def show
  end

  private

      def impact_params
       params.require(:impact).permit(:disaster_id, :zone_count, :atotal, :household_count, :dead, :injured, :missing, :displaced, :relocated, :good, :livestock, :agri, :infra, :commerce, :ptotal, :ctotal)
      end
end
