class Template < ActiveRecord::Base
  serialize :preview_image_links, Array
  has_attached_file :location
  validates_attachment_content_type :location, :content_type => ['application/pdf']
end
