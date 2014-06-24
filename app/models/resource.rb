class Resource < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def preview
    words = self.description.split(' ')
    words[0..40].join(' ') + '...' 
  end

end
