class Submission < ActiveRecord::Base
  has_many :original_image_links
  has_many :preview_image_links
  has_attached_file :location
  validates_attachment_content_type :location, :content_type => ['application/pdf']
end
