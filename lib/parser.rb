module Parser
  # require 'boilerpipe'
  require 'nokogiri'
  require 'open-uri'

  # def parse_text(url)
  #   return Boilerpipe.extract( url, {:output => :html, :extractor => :ArticleExtractor})
  # end

  def parse_text(url)
    return Nokogiri::HTML(open(url))
  end

end

class ArticlesController < ApplicationController
  include Parser
end

