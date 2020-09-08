module Echocat
  module Models
    class Author < Base
      include ::Echocat::Printer

      def self.attributes
        %i[email firstname lastname]
      end
    end
  end
end
