require 'response_code/base_imp'

module ResponseCode
  module Esri 
    extend ResponseCode::BaseImp

    @CODES = {
      invalid_token: 498,
      token_required: 499
    }
  end
end
