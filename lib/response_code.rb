require 'response_code/version'
require 'response_code/codes'

module ResponseCode 

  def self.method_missing(m, *args, &block)  
    if ResponseCode::CODES.include?(m.to_sym)
      ResponseCode::CODES[m.to_sym]
    else
      raise 'Not a valid status!'
    end
  end

  def self.lookup(code)
    if ResponseCode::CODES.value?(code.to_i)
      ResponseCode::CODES.key(code.to_i)
    else
      raise 'Not a valid code!'
    end
  end
end

