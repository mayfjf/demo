
class RouteController < ApplicationController
   # Fixes SSL Connection Error in Windows execution of Ruby
    # Based on fix described at: https://gist.github.com/fnichol/867550
  
require 'net/imap'
require 'cgi'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

def check_mail
 
  imap = Net::IMAP.new('imap.gmail.com',993,true)
  imap.login('guim.pdrrmc','disaster123')
  imap.select('INBOX')
  if !(mset=imap.search(["OR","SUBJECT", "ROUTE1","SUBJECT", "ROUTE0", "NOT", "NEW"])).blank?
    envelope = imap.fetch(mset, "ENVELOPE")[0].attr["ENVELOPE"]
    @sender = envelope.from[0].name
    @subject= envelope.subject
    
    msg = imap.fetch(mset,'RFC822')[0].attr['RFC822']
    mail = Mail.read_from_string msg

  @a1=mail.multipart? ? (mail.text_part ? mail.text_part.body.decoded : nil) : mail.body.decoded
  imap.copy(mset, "Attended")
  imap.store(mset, "+FLAGS", [:Deleted])
  imap.expunge
  imap.logout
  render "update"
else
    flash[:notice] = "No reports on route updates!"
    @r=Route.all
    render "show"          
end

end

  
def edit
    if !params[:id].blank?
      @r= Route.find(params[:id])
    end
  end  

def edituser
    if !params[:id].blank?
      @r= Route.find(params[:id])
    end
  end 

def update
end

def show
  @r=Route.all
end

def show_user
  @r=Route.all
end

def delete
    if !params[:route].blank?
      @r= Route.find(params[:route])
      @r.destroy
      flash[:notice] = "Route Data was deleted."
    end
    @r=Route.all
     render "show"
  end
  

  def create
      @r = Route.new(route_params)
      if @r.save
          flash[:notice] = "New Route Data was created"
      else
          flash[:notice] = @r.errors.full_messages
          
      end
      @r=Route.all
      render "show"
  end

  def savetable
      if !params[:id].blank?
        @r= Route.find(params[:id])
        @r.update_attributes(route_params)
        flash[:notice] = "New Route Data was updated and saved"
      else
        flash[:notice] = @r.errors.full_messages
      end
      @r=Route.all
      render "show"
  end

  def showdetails
    if !params[:id].blank?
     @r= Route.find(params[:id])
    end
  end

  def index
  if params[:search]
    @r = Route.search(params[:search]).order("created_at ASC")
  else
    @r = Route.all.order('created_at ASC')
  end
  render "show"
  end

  private

      def route_params
       params.require(:route).permit(:name,:passable, :weight, :description, :temp)
      end

end

