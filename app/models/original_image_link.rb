class OriginalImageLink < ActiveRecord::Base
  belongs_to :submission
  def self.create_links_for_submission(links: links, submission_id: submission_id)
    links.each_with_index do |link, index|
      OriginalImageLink.create(link: link, submission_id: submission_id, page: index+1)
    end 
  end
end
