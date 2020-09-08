# encoding: utf-8
module Echocat
  module CSVReader
    module_function

    def from_path(path:)
      CSV.open(path, 'r:bom|utf-8', col_sep: ';')
    end

    def read(resource:)
      CSVReader.from_path(path: resource)
    end

    def database
      @database ||= resource_files.map do |resource|
        parsed_data = read(resource: resource)
        headers     = parsed_data.first.map(&:strip)
        klass       = Echocat::ModelFactory.build(headers)
        parsed_data.to_a.map { |r| klass.new(r) }.flatten
      end
    end

    def inventory
      Echocat::ModelFactory::MODELS.map do |model|
        table = Terminal::Table.new
        table << model.attributes.map(&:to_s)
        table << :separator
        database.flatten.select { |d| d.class == model }.each do |row|
          table << row.print
        end
        table
      end
    end

    def resource_files
      Dir.glob("#{Echocat::DATA_PATH}/**/*").select { |r| File.file? r }
    end
  end
end
