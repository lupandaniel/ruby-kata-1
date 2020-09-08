module Echocat
  module Printer

    def print
      self.class.attributes.map do |attr|
        data.send(attr)[0..50]
      end
    end
  end
end
