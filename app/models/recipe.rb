# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :text
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :ingredients
	has_many :directions

	accepts_nested_attributes_for :ingredients,
																reject_if: proc { |attributes| attributes['name'].blank? },
																allow_destroy: true
	accepts_nested_attributes_for :directions,
																reject_if: proc { |attributes| attributes['step'].blank? },
																allow_destroy: true													

	validates :title, :description, :image, presence: true

	has_attached_file :image, styles: { medium: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
