require "cgi"
require "open-uri"

require "nokogiri"
require "json"
require "mongo_mapper"
require "chronic"

class Array
  def to_hash(default=nil)
    Hash[ *inject([]) { |a, value| a.push value, default || yield(value) } ]
  end
end


require "imdb/configuration"
require "imdb/skeleton"
require "imdb/search"
require "imdb/movie"
require "imdb/person"

