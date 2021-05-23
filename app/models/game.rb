class Game < ApplicationRecord
	has_many :matches, dependent: :destroy
	accepts_nested_attributes_for :matches ,:allow_destroy => true
end
