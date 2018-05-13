require 'response_code/base_imp'

module ResponseCode
  module Aborted
    extend ResponseCode::BaseImp

    CODES = {
      checkpoint: 103
    }

  end
end
