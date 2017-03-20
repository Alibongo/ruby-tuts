require 'rest-client'
require 'json'

class HttpReader
  def get(url)
    response = RestClient.get(url)
    puts response
  end
  def post(url, body)
    response = RestClient.post(url,body)
    puts response
  end
end
