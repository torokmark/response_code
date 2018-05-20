require 'response_code/base_imp'

module ResponseCode
  module Signal 
    extend ResponseCode::BaseImp

    @CODES = {
      network_read_timeout_error: 598
    }
  end
end
