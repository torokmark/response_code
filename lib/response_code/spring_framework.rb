require 'response_code/base_imp'

module ResponseCode
  module SpringFramework
    extend ResponseCode::BaseImp

    @CODES = {
      method_failure: 420
    }
  end
end
