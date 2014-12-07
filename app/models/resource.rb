class Resource < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  default_scope order('created_at DESC')

  def preview
    words = self.description.split(' ')
    words[0..40].join(' ') + '...' 
  end

  def self.most_recent
    @resources = Resource.order(created_at: :desc).limit(3)
  end
end
