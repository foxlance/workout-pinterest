class Pin < ActiveRecord::Base
  validates :name, :description, presence: :true
  belongs_to :user

  acts_as_votable

  has_attached_file :image, styles: { medium: "800>", thumb: "230>" }, default_url: "/img/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

