class PreviewImageLink < ActiveRecord::Base
  belongs_to :submission
  def self.create_links_for_submission(links: links, submission_id: submission_id)
    links.each do |link|
      PreviewImageLink.create(link: link, submission_id: submission_id)
    end 
  end
end
