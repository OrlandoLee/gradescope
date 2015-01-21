class Template < ActiveRecord::Base
  has_attached_file :location
  validates_attachment_content_type :location, :content_type => ['application/pdf']
end
