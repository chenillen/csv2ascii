#!/opt/local/bin/ruby -w
require 'rubygems'
require 'faster_csv'
# define csv file path
CSV_FILE_PATH = File.join(File.dirname(__FILE__), "data/data.csv")


# read the file

FasterCSV.foreach(CSV_FILE_PATH, :headers => true, :header_converters => :symbol) do |line|
  for n in 1..15
   p line[n]       
  end
 
   p line[:id] + "      " + line[:q1] + line[:q2] + line[:q3] + line[:q4] + line[:q5] + line[:q6]
  
end 
 
# DATA = File.read(CSV_FILE_PATH)
# 
# table = FCSV.parse(DATA, :headers => true, :header_converters => :symbol)
# p table[0].fields              