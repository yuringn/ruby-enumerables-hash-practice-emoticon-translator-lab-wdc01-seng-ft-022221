
def load_library(file_path)
  require "yaml"
  emoticons = YAML.load_file('lib/emoticons.yml')
  new_hash={}
  emoticons.map do |key,value|
if !new_hash[key]
  new_hash[key]={}
end
new_hash[key].store(:english,value[0])
new_hash[key].store(:japanese, value[1])
end
  p new_hash
end
load_library("lib/emoticons.yml")


#require"pry"
def get_japanese_emoticon(file_path, emoticon)
hash = load_library("./lib/emoticons.yml")
hash.map do |key,value|
  if value[:english] == emoticon
    return value[:japanese]
  end
end
return "Sorry, that emoticon was not found"
end
get_japanese_emoticon("./lib/emoticons.yml", ":)")

require"pry"
def get_english_meaning(file_path,emoticon)
  emoticon_hash = load_library("./lib/emoticons.yml")
  emoticon_hash.map do |i,value|
  if emoticon_hash[i][:japanese] == emoticon
    return i
end
end
  return "Sorry, that emoticon was not found"
end
get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")
