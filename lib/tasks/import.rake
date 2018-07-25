# require 'csv'

# namespace :import do
#   desc "Import Mushrooms from csv"

#   task mushrooms: :environment do
#     filename = File.join Rails.root, "mushroom_info.data"
#     counter = 0
#     CSV.foreach(filename) do |row|
#       mushroom = Mushroom.create(edible: row[0], cap_shape: row[1], cap_surface: row[2], cap_color: row[3], bruises: row[4], odor: row[5], gill_attachment: row[6], gill_spacing: row[7], gill_size: row[8], gill_color: row[9], stalk_shape: row[10], stalk_root: row[11], stalk_surface_above_ring: row[12], stalk_surface_below_ring: row[13], stalk_color_above_ring: row[14], stalk_surface_below_ring: row[15], veil_type: row[16], veil_color: row[17], ring_number: row[18], ring_type: row[19], spore_print_color: row[20], population: row[21], habitat: row[22])
#       counter =+ 1 if mushroom.persisted?
#     end
#     puts "Imported #{counter} mushrooms"
#   end
# end
