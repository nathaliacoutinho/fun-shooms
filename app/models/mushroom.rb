class Mushroom < ApplicationRecord
  scope :edible, -> (edible) { where edible: edible }
  scope :cap_color, -> (cap_color) { where cap_color: cap_color }

end
