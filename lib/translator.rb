# require modules here
require 'yaml'
require 'pry'

def load_library (library)
 
   emoticons = YAML.load_file(library)
 
   new_library = {}
   
   emoticons.each do |key, value|
     
     if new_library[key] == nil 
       new_library[key] = {}
     end
     
     if new_library[key][:english] == nil 
       new_library[key][:english] = value[0]
     end
     
     if new_library[key][:japanese] == nil 
       new_library[key][:japanese] = value[1]
     end
     
   end
   
 new_library
 
end



def get_japanese_emoticon (library, emote)
  
  emoticons = load_library(library)
  binding.pry
  emoticons.each do |key, value|
    
    value.each do |element|
      
      if element == emote 
        return emoticons[key][1]
      end
      
    end
    
  end
  
  return "Sorry, that emoticon was not found"
  
end

def get_english_meaning
  # code goes here
end