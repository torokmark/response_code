module ResponseCode
  module BaseImp
    extend self

    CODES = { hola: 103 }
    
    def method_missing(m, *args, &block)
      if CODES.include(m.to_sym)
        CODES[m.to_sym]
      else
        raise 'Not a valid status!'
      end
    end

    def lookup(code)
      if CODES.value?(code.to_i)
        CODES.key(code.to_i)
      else
        raise 'Not a valid code!'
      end
    end
  end
end
