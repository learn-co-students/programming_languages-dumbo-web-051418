def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def lang_list
selected_langs = languages.collect do |type, lang_name|
   lang_name.keys
 end
 selected_langs.flatten
end

def get_style(name)
  type = []
  type << :oo if languages[:oo].has_key?(name)
  type << :functional if languages[:functional].has_key?(name)
  type
end

def get_type(name)
  languages[get_style(name)[0]][name][:type]
end

def reformat_languages(languages)
  formatted = {}
  lang_list.collect do |lang|
    formatted[lang] = {
      type: get_type(lang),
      style: get_style(lang)
    }
  end
  formatted
end
