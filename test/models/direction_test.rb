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

require 'test_helper'

class DirectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
