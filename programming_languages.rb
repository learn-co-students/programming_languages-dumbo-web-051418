
def reformat_languages(languages)
  # your code here
  # new hash to store reformatted languages and uses merge to create top level
  new_hash = languages[:oo].merge(languages[:functional])
  #iterate over new_hash to add style
  new_hash.keys.each do|key|
    new_hash[key][:style] = languages.keys.collect do |style|
      if languages[style].include?(key)
        style
      end
    end.compact
  end
  return new_hash
end