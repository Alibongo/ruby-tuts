require 'json'

module Country
  module Utility
    def get_country(response)
      result = JSON.parse(response)
      result['result']['country']
    end
  end

end


# module has been created with name spacing
