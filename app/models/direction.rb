# == Schema Information
#
# Table name: directions
#
#  id         :integer          not null, primary key
#  step       :text
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Direction < ActiveRecord::Base
  belongs_to :recipe
end
