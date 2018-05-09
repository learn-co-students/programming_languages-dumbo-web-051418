def reformat_languages(languages)
#new hash 
#add wanted components of orig hash to new hash 
#add the last style key value pair 
#return new hash 

oo_hash = {}
functional_hash={}
merged_hash={}

oo = languages[:oo]
functional = languages[:functional]

oo.each do |lang, type|
  oo_hash[lang] = type
end 

oo_hash.each do |lang, type|
  type[:style] = [:oo]
end 

functional.each do |lang, type|
  functional_hash[lang] = type
end 

functional_hash.each do |lang, type|
  type[:style] = [:functional]
end 

merged_hash = oo_hash.merge(functional_hash)

merged_hash[:javascript] = {type: "interpreted", style: [:oo,:functional]}

merged_hash
end
