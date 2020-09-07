module Echocat
  module Models
    class Book < Base
      include ::Echocat::Printer
      def self.attributes
        %i[яЛПtitle isbn authors description]
      end
    end
  end
end
