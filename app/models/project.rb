class Project < ActiveRecord::Base
  has_attached_file :screenshot, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :screenshot, :matches => [/png\Z/i, /jpe?g\Z/i]

  def preview
    words = self.description.split(' ')
    words[0..40].join(' ') + '...' 
  end

end
