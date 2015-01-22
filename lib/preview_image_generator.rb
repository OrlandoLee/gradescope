class PreviewImageGenerator
  def initialize (file)  #file should have a interface called location
    @file = file
  end
    
  def preview_image_links
    generate_images
    preview_image_links = []
    p pages
    p file_path
    pages.times do |index|
      preview_image_links << image_url(index)
    end
    p preview_image_links
    preview_image_links
  end
  
private
  def generate_images
    Docsplit.extract_images(file_path, :size => '360x', :output => output_base_path)
  end 
  
  def pages
    Docsplit.extract_length(file_path)
  end
  
  def file_path
    @file.location.path
  end
  
  def file_url
    @file.location.url
  end
  
  def output_base_path
    file_path.split('/')[0..-3].join('/')+'/images/'
  end
  
  def output_base_url
    file_url.split('/')[0..-3].join('/')+'/images/'
  end
  
  def file_name
    file_path.split('/').last.split('.').first
  end
  
  def image_url(index, type = 'png')
    output_base_url + file_name + '_' + (index+1).to_s + '.' + type
  end
      
end