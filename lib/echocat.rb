# frozen_string_literal: true

module Echocat
  DATA_PATH = File.join(File.expand_path('../../', __FILE__), 'data')

  class CLI < Thor
    desc 'print_inventory', 'Prints out inventory for books and magazines'
    option :sort_by_title, type: :boolean

    def print_inventory
      CSVReader.inventory.each { |i| puts i }
    end

    desc 'find_book', 'Find a book by isbn'
    option :isbn, type: :string

    def find_book

    end

    desc 'find_books_or_magazines', 'Find books/magazines by author'
    option :author, type: :string

    def find_books_or_magazines

    end
  end
end
