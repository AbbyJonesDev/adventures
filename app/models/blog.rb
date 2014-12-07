class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  scope :published, -> (published) { where publish: published }

  def preview
    words = self.content.split(' ')
    words[0..40].join(' ') + '...' 
  end

  def self.index(admin=nil)
    if admin
      @blogs = Blog.order(created_at: :desc)
    else
      @blogs = Blog.order(created_at: :desc).where(publish: true)
    end
  end

  def self.most_recent(admin=nil)
    if admin
      @blogs = Blog.order(created_at: :desc).limit(3)
    else 
      @blogs = Blog.order(created_at: :desc).where(publish: true).limit(3)
    end
  end

  def self.by_category(category, admin=nil)
    if admin
      @blogs = Blog.where(category: category)
    else
      @blogs = Blog.where(category: category).published(true)
    end
  end

end


