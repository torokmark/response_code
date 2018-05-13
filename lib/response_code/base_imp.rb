module ResponseCode
  module BaseImp
    def self.method_missing(m, *args, &block)
      if CODES.include(m.to_sym)
        CODES[m.to_sym]
      else
        raise 'Not a valid status!'
      end
    end

    def self.lookup(code)
      if CODES.values?(code.to_i)
        CODES.key(code.to_i)
      else
        raise 'Not a valid code!'
      end
    end
  end
end
