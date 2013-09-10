class Article < ActiveRecord::Base
  default_scope order('created_at DESC')
  validates_presence_of :url
  belongs_to :user
end
