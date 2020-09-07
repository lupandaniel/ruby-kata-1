module Echocat
  module Printer

    def print
      self.class.attributes.map do |attr|
        data.send(attr)
      end
    end
  end
end
