module Moped
  module BSON
    # @private
    module Extensions
      module FalseClass
        def __bson_dump__(io, key)
          io << Types::BOOLEAN
          io << key.dup.force_encoding('binary')
          io << NULL_BYTE
          io << NULL_BYTE
        end

        def __safe_options__
          false
        end
      end
    end
  end
end
