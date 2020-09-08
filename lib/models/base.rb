module Echocat
  module Models
    class Base
      attr_reader :data_model, :data

      def initialize(data_array)
        @data_model = Struct.new(*self.class.attributes)
        @data       = data_model.new(*data_array)
      end

      def self.attributes
        raise NotImplementedError
      end
    end
  end
end
