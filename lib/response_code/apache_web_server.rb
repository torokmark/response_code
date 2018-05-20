require 'response_code/base_imp'

module ResponseCode
  module ApacheWebServer 
    extend ResponseCode::BaseImp

    @CODES = {
      bandwith_limit_exceeded: 509
    }
  end
end
