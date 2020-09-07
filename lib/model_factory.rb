module Echocat
  module ModelFactory
    module_function

    MODELS = [Echocat::Models::Book, Echocat::Models::Magazine, Echocat::Models::Author].freeze

    def build(headers)
      MODELS.find { |m| m.attributes.map(&:to_s).sort == headers.sort }
    end
  end
end
