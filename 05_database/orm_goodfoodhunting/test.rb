

begin
  puts 'processing stuff'

  # raise ArgumentError

  puts 'eating toobs'
rescue ActiveRecord::RecordNotFound
  puts 'put out the fire'
end