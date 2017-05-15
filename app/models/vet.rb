class Vet < ApplicationRecord
has_attached_file :image, styles: { medium: "50x50>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :office
  validates :office_id, presence: true 
end
