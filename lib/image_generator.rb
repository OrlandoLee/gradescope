class ImageGenerator
  def initialize (file)  #file should have a interface called location
    @file = file
  end
    
  def preview_image_links
    generate_preview_images
    preview_image_links = []
    pages.times do |index|
      preview_image_links << image_url(index)
    end
    preview_image_links
  end
  
  def original_image_links
    generate_original_images
    original_image_links = []
    pages.times do |index|
      original_image_links << original_image_url(index)
    end
    original_image_links
  end
  
private
  def generate_preview_images
    Docsplit.extract_images(file_path, :size => '360x', :output => output_base_path)
  end 
  
  def generate_original_images
    Docsplit.extract_images(file_path, :output => original_output_base_path)
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
  
  def original_output_base_path
    file_path.split('/')[0..-3].join('/')+'/original_images/'
  end
  
  def original_output_base_url
    file_url.split('/')[0..-3].join('/')+'/original_images/'
  end
  
  def file_name
    file_path.split('/').last.split('.').first
  end
  
  def image_url(index, type = 'png')
    output_base_url + file_name + '_' + (index+1).to_s + '.' + type
  end
  
  def original_image_url(index, type = 'png')
    original_output_base_url + file_name + '_' + (index+1).to_s + '.' + type
  end
      
end