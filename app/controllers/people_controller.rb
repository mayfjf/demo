class PeopleController < ApplicationController
  respond_to :html, :xml

  def new
    @p = People.new 
    @p_id=params[:id]
  end

  def edit
    if !params[:id].blank?
      @p= People.find(params[:id])
    end
  end

  def show
    @p = People.all
  end

def index
    @key =params[:key]
    @value = params[:value]
    if @key=="Age"
        @p=People.where("age = ?", @value)
    end
    if @key=="Civil_status"
        @p=People.where("civilstatus like ?", @value)
    end
    if @key=="Occupation"
        @p=People.where("occupation like ?", @value)
    end
    if @key=="Household_ID"
        @p=People.where("household_id = ?", @value)
    end
    
    if @key=="Family_name"
        @p=People.where("familyname like ?", @value)
    end 
    if @key=="Gender"
        @p=People.where("gender like ?", @value)
    end 
    render "show"
    
    
end


  def search
    @value = params[:id]
    @p=People.where("household_id = ?", @value)
    render "show"
  end

  def searchp
    @h = params[:id1]
    @disaster_id = params[:id3]
    @p=People.where("household_id = ? AND condition LIKE ?", @h, "Alive")
    render "show_affected_people"
  end

  def show_affected_people
    @p = People.all
  end


  def delete
    if !params[:people].blank?
      @p= People.find(params[:people])
      @p.destroy
      flash[:notice] = "People Data was deleted"
    end
    @p=People.where("household_id = ?", @p.household_id)
    render "show"
  end

  

  def create
       @p = People.new(people_params)
      if @p.save
          flash[:notice] = "New People Data was saved"
      else
          flash[:notice] = @p.errors.full_messages
          
      end
      @p=People.where("household_id = ?", @p.household_id)
      render "show"
  
   end

  def savetable
      if !params[:id].blank?
        @p= People.find(params[:id])
         @p.update_attributes(people_params)
         @p.save
        flash[:notice] = "New People Data was saved"
      else
        flash[:notice] = "ID not found"
      end
      @p.save
      @p=People.where("household_id = ?", @p.household_id)
      render "show"
  end

  def showdetails
    if !params[:id].blank?
     @p= People.find(params[:id])
    end
  end


  private

      def people_params
       params.require(:people).permit(:firstname, :middlename, :familyname, :birthdate,:condition,:civilstatus, :occupation, :contactnum, :disabilityinfo, :household_id, :email, :gender, :age)
      end
end
