# require modules here

require 'pry'
require 'yaml'

def load_library(file_path)
  lib = {:get_meaning => {}, :get_emoticon => {}}
  loaded_file = YAML.load_file(file_path)
  loaded_file.each do |meaning, emoticon|
    lib[:get_meaning]["#{emoticon[1]}"] = meaning
    lib[:get_emoticon]["#{emoticon[0]}"] = emoticon[1]
  end
  lib
  #binding.pry
end

def get_japanese_emoticon(file_path, emoticon)
  lib = load_library(file_path)
  result = lib[:get_emoticon][emoticon] ? lib[:get_emoticon][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end