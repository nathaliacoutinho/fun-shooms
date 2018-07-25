require 'csv'
Mushroom.destroy_all

# created a seeds folder in lib and saved the data file in it
# used csv library to read from the file
# parsed the csv file, the :headers => true, tells Ruby to ignore the first line of code, the headers, which are used to name the attributes for our mushrooms; we will have a hash, with keys that matches our schema

csv_text = File.read(Rails.root.join('lib', 'seeds', 'mushroom_info.data'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  # puts row.to_hash
  Mushroom.create!(row.to_hash)
end

puts "There are now #{Mushroom.count} rows in the mushrooms table"



