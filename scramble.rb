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
