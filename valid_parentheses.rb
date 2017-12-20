def valid_parentheses(string)
  d = string.length
  i = 0
  alpha = ("a".."z").to_a

  string2 = string.chars.map{|x|
    if alpha.include?(x) then 
      ""
    else
      x
    end
  }.join('')


  while i < d
    string2.gsub!("()", "")
    i += 1
  end

  string2.strip.empty? ? true : false

end
