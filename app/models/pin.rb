class Pin < ActiveRecord::Base
  validates :name, :description, presence: :true
  belongs_to :user

  has_attached_file :image, styles: { medium: "800x600>", thumb: "350x350#" }, default_url: "/img/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

