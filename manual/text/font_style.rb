# encoding: utf-8
# 
# Most font families come with some styles other than normal. Most common are
# <code>bold</code>, <code>italic</code> and <code>bold_italic</code>.
#
# The style can be set using the <code>font</code> where it will apply for the
# rest of the document or inline in the text methods with the
# <code>:style</code> option.
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))

filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::Example.generate(filename) do
  ["Courier", "Helvetica", "Times-Roman"].each do |example_font|
    move_down 20
    
    [:bold, :bold_italic, :italic, :normal].each do |style|
      font example_font, :style => style
      text "I'm writing in #{example_font} (#{style})"
    end
  end
  
  move_down 20
  font "Helvetica"
  
  text "Normal"
  text "Bold",        :style => :bold
  text "Bold Italic", :style => :bold_italic
  text "Italic",      :style => :italic
  text "Normal"
end