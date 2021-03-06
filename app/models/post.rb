class Post < ActiveRecord::Base
	has_attached_file :picture, styles: { medium: "500x500>", thumb: "100x100" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
	validates :manufacturer, presence: true
	validates :model, presence: true, length: { maximum: 30 }
	validates :price, presence: true
	validates :body, presence: true, length: { maximum: 1500 }
	validates :picture, presence: true
end
