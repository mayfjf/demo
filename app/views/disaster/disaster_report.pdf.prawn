pdf.text "Disaster Report", :size => 30, :style => :bold
stroke_horizontal_rule
pdf.move_down(10)

pdf.move_down(10)

pdf.text_box "Disaster # #{ @d.id }", :align => :right
pdf.move_down(20)

pdf.text "Guimaras PDRRMC Post Disaster Assessment and Decision Support on Responce System has come up with the following figures after disaster # #{ @d.id } hit Guimaras. The results were based on the data that has been entered and saved into the system by authorized and trained personnel."
pdf.move_down 20

pdf.font_size 10
pdf.text "Date and Time of Disaster:    #{ @d.date }"

pdf.text "Type of Disaster:    #{ @hazard }"

pdf.move_down 20
pdf.text "Details of Disaster:      #{ @d.details }"
pdf.move_down 20
pdf.text "Number of Zones affected:    #{ @zc }."
pdf.text "Number of household affected: #{ @hc }"
pdf.move_down 10
pdf.text "Number of unaffected people:   #{ @good }"
pdf.move_down 10
pdf.text "Number of dead people:      #{ @dead }"
pdf.text "Number of missing people:   #{ @missing }"
pdf.text "Number of injured people:   #{ @injured }"
pdf.text "Number of displaced people:   #{ @displaced }"
pdf.text "Number of relocated people:   #{ @relocated }"
pdf.text "TOTAL Number of affected people:   #{ @ptotal }"
pdf.move_down 10
pdf.text "Livestock lost in Php :   #{ @live }"
pdf.text "Agriculture lost in Php:   #{ @agri }"
pdf.text "Infrastructure Lost in Php:   #{ @infra }"
pdf.text "Commerce lost in Php:   #{ @commerce }"
pdf.text "TOTAL Value lost in Php:   #{ @ctotal }"
pdf.move_down 10
stroke_horizontal_rule
pdf.move_down 10
pdf.text "END OF REPORT", :align => :center
pdf.move_down 30
pdf.text "Ready for Dissemination:"
pdf.move_down 30
pdf.text "MRS. TERESITA SIASON"
pdf.text "HEAD - Guimaras PDRRMC"
pdf.text "San Miguel, Jordan, Guimaras"






