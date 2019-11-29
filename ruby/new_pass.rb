puts 'lastname'
lastname = gets.chomp.upcase

aa = {
  'a'=> '1',
  'e'=> '3',
  'i'=> '8',
  'o'=> '9',
  'u'=> '7'
}

vv = ""
lastname[1..-1].downcase.each_char do |a|
  if %w(a e i o u).include? a
    vv += aa[a]
  else
    vv += a
  end
end

first_letter = lastname[0]

puts "#{first_letter}#{vv}!#{lastname[-2].ord}#{lastname[-1].ord}"
