def reformat_languages(language)
  new_hash={}
  language.each do |key,value|
    #puts (key)
    value.each do |attribute,i_or_c|
      if new_hash.has_key?(attribute)
        new_hash[attribute][:style] << key
      else
        i_or_c[:style]=[key]
        new_hash[attribute] = i_or_c
      end
    end
  end
new_hash
end

