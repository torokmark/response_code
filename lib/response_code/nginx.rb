require 'response_code/base_imp'

module ResponseCode
  module Nginx 
    extend ResponseCode::BaseImp

    @CODES = {
      no_response: 444,
      request_header_too_large: 494,
      ssl_certificate_error: 495,
      ssl_certificate_required: 496,
      http_request_sent_to_https_port: 497,
      client_closed_request: 499
    }
  end
end
