require 'response_code/base_imp'

module ResponseCode
  module Cloudflare 
    extend ResponseCode::BaseImp

    @CODES = {
      unknown_error: 520,
      web_server_is_down: 521,
      connection_timed_out: 522,
      origin_is_unreachable: 523,
      a_timeout_occurred: 524,
      ssl_handshake_failed: 525,
      invalid_ssl_certificate: 526,
      railgun_error: 527,
      origin_dns_error: 530
    }
  end
end
