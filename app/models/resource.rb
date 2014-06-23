class Resource < ActiveRecord::Base

  def preview
    words = self.description.split(' ')
    words[0..40].join(' ') + '...' 
  end

end
