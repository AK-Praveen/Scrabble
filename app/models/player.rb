class Player < ApplicationRecord
	has_many :matches, dependent: :destroy
	validates :first_name, :last_name, :email, presence: true
	validates :contact_number, :presence => true, :numericality => true, :length => { :minimum => 10, :maximum => 15 }
	validates :first_name, uniqueness: { case_sensitive: false }
end
