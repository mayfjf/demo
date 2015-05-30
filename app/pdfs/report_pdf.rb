class ReportPdf < Prawn::Document
  def initialize(hit)
    super()
    @hit = hit
    header
    text_content
    table_content
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
    image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 150
  end
 
  
end