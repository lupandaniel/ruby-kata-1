module Echocat
  module Models
    class Book < Base
      include ::Echocat::Printer
      def self.attributes
        %i[title isbn authors description]
      end
    end
  end
end
