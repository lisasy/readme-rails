class Parser
  require 'pismo'

  def initialize(url)
    @doc = Pismo::Document.new(url)
  end

  def parse_text
    return @doc
  end
end
