def to_sentence(arr = [])
  case arr.length
  when 0
    ''
  when 1
    arr.first
  else
    "#{arr[0..-2].join(', ')} and #{arr.last}"
  end
end