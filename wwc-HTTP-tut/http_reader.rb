require 'rest-client'
require 'json'

class HttpReader
  #get method defined. Takes parameter - url
  def get(url)
    # access class RestClient (in Gem)
    # get method is called - passing the url.
    response = RestClient.get(url)
    #print output to the screen.
    puts response
  end
  def post(url, body)
    response = RestClient.post(url,body)
    puts response
  end
end
