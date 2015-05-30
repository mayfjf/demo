pdf.text "Hit Zone Status Report", :size => 30, :style => :bold
stroke_horizontal_rule
pdf.move_down(10)

pdf.move_down(10)

pdf.text_box "Hit # #{ @hit.id }", :align => :right
pdf.move_down(20)

pdf.text "Guimaras PDRRMC Post Disaster Assessment and Decision Support on Response System has come up with the following figures after Zone # #{ @z } was hit by a natural disaster. The results were based on the data that has been entered and saved into the system by authorized and trained personnel."
pdf.move_down 20

pdf.font_size 10
pdf.text "Date and Time of Disaster:    #{ @date }"
pdf.text "Type of Disaster:    #{ @type }"
pdf.text "Zone Name:    #{ @zone_name }"
pdf.text "Barangay:    #{ @bar }"
pdf.text "Municipality:    #{ @mun }"
pdf.move_down 10
pdf.text "Major Effect:    #{ @ef1 }"
pdf.text "Secondary Effect:    #{ @ef2 }"
pdf.text "Minor Effect:    #{ @ef3 }"
pdf.move_down 10
pdf.text "Major Damaged Lifeline:    #{ @dam1 }"
pdf.text "Secondary Damaged Lifeline:    #{ @dam2 }"
pdf.text "Minor Damaged Lifeline:    #{ @dam3 }"





stroke_horizontal_rule
pdf.move_down 10
pdf.text "END OF REPORT", :align => :center
pdf.move_down 30
pdf.text "Ready for Dissemination:"
pdf.move_down 30
pdf.text "MRS. TERESITA SIASON"
pdf.text "HEAD - Guimaras PDRRMC"
pdf.text "San Miguel, Jordan, Guimaras"






