# the requires are referencing the libraries we're using
require 'rest-client'
require_relative 'http_response'
require_relative 'country/utility'
require_relative 'geo/utility'

# Get method takes parameter- url
# Access RestClient class (accessed via the gem)
# Get method is called, passing the url parameter
class HttpReader < HttpResponse
  include Country::Utility, Geo::Utility
  def get(url)
    response = RestClient.get(url)
    response
  end

  # def get_status(response)
  #   result =JSON.parse(response) #this module allows us to handle/Parse JSON formatted responses
  #   # parsed into a Ruby json object, which is assigned a var called result.
  #   # this returns a ruby hash, whivh allows us to store info in key value pairs.
  #   puts result['status']#result is the hash , the key is the status
  # end

# ----- Exercise 5 -----
# -find the country
# def get_country(response)
#   result = JSON.parse(response)
#   result ['result'] ['country']
# end

end
