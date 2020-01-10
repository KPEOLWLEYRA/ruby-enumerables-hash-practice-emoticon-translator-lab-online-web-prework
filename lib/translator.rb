# require modules here
require "yaml"
require "pry"
require "pp"


def load_library(library)
  emoticons = YAML.load_file(library)
  #pp emoticons 
  emoticons
  emote = {:get_meaning => {}, :get_emoticon =>{} }
  get_meaning = 
  emoticons.each do |key, value|
    emote[:get_meaning][value[1]] = key
    emote[:get_emoticon][value[0]] = value[1]
    
  end
  puts emote
  emote
end

load_library("./lib/emoticons.yml")

def get_japanese_emoticon(library, english_emote)
  library = load_library("./lib/emoticons.yml")
  library[:get_emoticon].each do |key, value|
    if english_emote == key
      puts value
      return value
    end
  end
  returns "Sorry, that emoticon was not found"
end
  
  

get_japanese_emoticon("./lib/emoticons.yml", ":)")

def get_english_meaning
  # code goes here
end