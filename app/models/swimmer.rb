class Swimmer < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :swimmer_img, :styles => { swimmer_index: "250x350>", :swimmer_show => "325x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :swimmer_img  , content_type: /\Aimage\/.*\z/
end
