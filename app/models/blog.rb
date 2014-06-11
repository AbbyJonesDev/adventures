class Blog < ActiveRecord::Base

  def preview
    words = self.content.split(' ')
    words[0..40].join(' ') + '...' 
  end
end
