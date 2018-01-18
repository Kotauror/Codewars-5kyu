def anagrams(word, words)
anagrams = []
  words.each { |one|
    if one.chars.sort.join == word.chars.sort.join then
      anagrams.push(one)
    end
  }
  anagrams
end
