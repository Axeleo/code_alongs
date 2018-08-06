

def valid_pin?(text)
  return false if text =~ /\D/
  return false if text.chars.uniq.length ==1
  if text.length == 4
    true
  else 
    false  
  end
end

# def valid_pin?(text)
#   text.length == 4 ? true : false  
# end

