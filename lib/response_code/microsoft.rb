require 'response_code/base_imp'

module ResponseCode
  module Microsoft 
    extend ResponseCode::BaseImp

    @CODES = {
      blocked_by_windows_parental_controls: 450
    }
  end
end
