#!/opt/local/bin/ruby -w
require 'rubygems'
require 'faster_csv'
# define csv file path
CSV_FILE_PATH = File.join(File.dirname(__FILE__), "data/data.csv")


# read the file
# code_map = <<END_CODE
# Case/card # cols 1-4
# Card Start Width Items Total Variable
# No.  Col.              Cols.
# END_CODE         

FasterCSV.foreach(CSV_FILE_PATH, :headers => true, :header_converters => :symbol) do |line|
  ascii = line[:id] + '   '
  code_map = "" 
  start_col = 6
  item = 1  
  for n in 1..16
   if line[n]
     
     line[n].split("|").each{ |unit| ascii += unit}
     
     
     ascii += line[n]
     start_col += line[n-1].length * item unless n == 1
     item  if line[n].split("|" ,)
     #code_map += line[:id]  +"    " + start_col.to_s + "     " + line[n].length.to_s + "    " + item.to_s + line[:header] + '\n' 
   end      
  end
  p ascii
  p code_map
  p start_col
  
end   



# DATA = File.read(CSV_FILE_PATH)
# 
# table = FCSV.parse(DATA, :headers => true, :header_converters => :symbol)
# p table[0].fields              