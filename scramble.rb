def scramble(s1,s2)

  s2_d = s2.length
  arrayofs1 = s1.split("")
  arrayofs2 = s2.split("")
  lon = 0
  arrayofs2.each { |letter|
    if arrayofs1.include?(letter) then
      arrayofs1.slice!(arrayofs1.index(letter))
      lon += 1
    end
  }

  return lon == s2_d

end


def scramble(s1,s2)

  hash = {}

  s1.chars { |letter|
    if hash[letter] != nil then
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  }

  s2.chars { |letter|
    if hash[letter] != 0 && hash[letter] != nil then
       hash[letter] -= 1
    else
      return false
    end
  }

  return true

end


def scramble(s1,s2)

  hash = {}
  hash.default = 0

  s1.chars { |letter|
    hash[letter] += 1
  }

  s2.chars { |letter|
    if hash[letter] != 0 then
       hash[letter] -= 1
    else
      return false
    end
  }

  return true

end
