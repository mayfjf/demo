class SmsController < ApplicationController
	 

  def alert
    
     @dept=params[:value1]
     @hid=params[:id]
     @num=params[:value3]
     @zid = params[:value2]

    RestClient.post('http://api.semaphore.co/api/sms',
        { api:'ApDd7oUU35arXxQguhuV',
          number:@num,
          message: %Q[Alert message: Your team is expected to respond urgently.Disaster has hit zone #{@zid}. Thank you -- PDRRMC Guimaras],
          from:'Guimaras PDRRMC'})  
    flash[:notice] = %Q[SMS has been successfully sent to #{@dept}!] 
    redirect_to url_for(:controller => :hit, :action => :support, :id => @hid)
      
    end
    

end
