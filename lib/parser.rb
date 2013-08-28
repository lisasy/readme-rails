module Parser
  require 'pismo'

  def parse_text(url)
    doc = Pismo::Document.new(url)
    return doc.body

  end


end

class ArticlesController < ApplicationController
  include Parser
end
