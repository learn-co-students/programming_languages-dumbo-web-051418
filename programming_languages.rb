# 2-language => level 1
# 3-:type => level 2
# paradigm => values in array for new hash type in level 2
# Desired Output: reformat_languages[:ruby] = { :type => "interpreted", :style => [:oo] }


def reformat_languages(languages)
  reformat_languages = {}

  languages.each do |paradigm, hash_as_value|
    hash_as_value.each do |language, details|
      reformat_languages[language] ||= details
      reformat_languages[language][:style] ||= []
      reformat_languages[language][:style] << paradigm
    end
  end

  reformat_languages
end
