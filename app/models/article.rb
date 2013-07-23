class Article < ActiveRecord::Base
  has_many :articles_tags
  has_many :tags, through: :articles_tags
  belongs_to :category
  # attr_accessible :title, :description, :url, :category_id
  # before_save: set_url

  def title_url
    "#{self.title.downcase.gsub(' ', '-')}"
  end

  private
  def set_url
    self.url = "#{self.title.downcase.gsub(' ', '-')}"
  end
end
