require 'response_code/base_imp'

module ResponseCode
  module IIS 
    extend ResponseCode::BaseImp

    @CODES = {
      login_time_out: 440,
      retry_with: 449,
      redirect: 451
    }
  end
end
