class FileSplitter
  def initialize(submission_id)
    @submission = Submission.find(submission_id)
  end
  
  def split_file!(start_page: start_page, end_page: end_page, parameters: parameters)
    new_submission = Submission.create(student_name: parameters[:student_name])
    update_links!(@submission.preview_image_links, start_page, end_page, new_submission)
    update_links!(@submission.original_image_links, start_page, end_page, new_submission)
    new_submission
  end
  
private
  def update_links!(links, start_page, end_page, new_submission)
    links.where("page >= ? AND page <= ?", start_page, end_page).each do |link|
      link.update_attributes!(submission_id: new_submission.id)
    end
  end
end