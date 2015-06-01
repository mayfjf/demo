 
 
class BestpathController < ApplicationController

 
  def new  	
  end

  def pass   
  end

  def show  
  end

  def avshowbr  
  end


  def assess
  	@s=params[:start]
  	@e=params[:end]
	  @g = Graph.new 
  	render 'show'
  end

  def assess2
    @s=params[:start]
    @e=params[:end]
    @g = Graph.new 
    render 'avshowbr'
  end


end
