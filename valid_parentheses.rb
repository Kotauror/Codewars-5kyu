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


#------ ANOTHER SOLUTION

def valid_parentheses(string)
  counter=0
  string.chars{|x|
    if x=="(" then
      counter += 1
    elsif x==")" then
      counter -= 1
    end
    if counter < 0 then #we have closed more parenthesis than we've opened // checks )
      return false #we cannot wait till the end since we can open another par... and counter will be increase and give a no no  result
    end
  }
  #the line below works for such cases: ()( , (() - counter is > 0 so it doesn't return false
  return counter == 0 #it means return true if counter indeed equals 0  //checks (  [ now we want hom many ( we have opened so can check if every has pair)
end
