#!/usr/bin/ruby
###
# Sort integer arguments (ascending)
###

result = []
ARGV.each do |arg|
  # skip if not integer
  next if arg !~ /^-?[0-9]+$/

  # convert to integer
  i_arg = arg.to_i

  # find the right position and insert the integer
  inserted = false
  result.each_with_index do |val, index|
    if i_arg < val
      result.insert(index, i_arg)
      inserted = true
      break
    end
  end
  result << i_arg unless inserted
end

puts result

