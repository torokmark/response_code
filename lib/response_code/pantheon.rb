require 'response_code/base_imp'

module ResponseCode
  module Pantheon 
    extend ResponseCode::BaseImp

    @CODES = {
      site_is_frozen: 530
    }
  end
end
