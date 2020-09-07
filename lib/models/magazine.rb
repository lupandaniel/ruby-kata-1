module Echocat
  module Models
    class Magazine < Base
      include ::Echocat::Printer

      def self.attributes
        %i[яЛПtitle isbn authors publishedAt]
      end
    end
  end
end
