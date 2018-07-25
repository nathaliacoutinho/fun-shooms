require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'mushroom_info.data'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
end

csv.each do |row|
  m = Mushroom.new
  m.edible = row['edible']
  m.cap_shape = row['cap_shape']
  m.cap_surface = row['cap_surface']
  m.cap_color = row['cap_color']
  m.bruises = row['bruises']
  m.odor = row['odor']
  m.gill_attachment = row['gill_attachment']
  m.gill_spacing = row['gill_spacing']
  m.gill_size = row['gill_size']
  m.gill_color = row['gill_color']
  m.stalk_shape = row['stalk_shape']
  m.stalk_root = row['stalk_root']
  m.stalk_surface_above_ring = row['stalk_surface_above_ring']
  m.stalk_surface_below_ring = row['stalk_surface_below_ring']
  m.stalk_color_above_ring = row['stalk_color_above_ring']
  m.stalk_color_below_ring = row['stalk_color_below_ring']
  m.veil_type = row['veil_type']
  m.veil_color = row['veil_color']
  m.ring_number = row['ring_number']
  m.ring_type = row['ring_type']
  m.spore_print_color = row['spore_print_color']
  m.population = row['population']
  m.habitat = row['habitat']
  m.save
end

puts "There are now #{Mushroom.count} rows in the mushrooms table"



