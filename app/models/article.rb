class Article < ActiveRecord::Base
  # include Parser
  default_scope order('created_at DESC')
end
