# Подключение gem по шифрованию digest
require 'digest'

# Приветствие с пользователем и просьба ввести слово для шифрования
puts "Добрый день!"
puts "Это программа для шифрования данных"
puts "Введите слово для шифрования"
message = gets.chomp #сохраняем переменную со словом пользователя
puts "Каким методом зашифровать? (Выберете цифру) "
puts "1) SHA1"
puts "2) MD5"
puts "3) SHA2"
encryption_method = gets.chomp # сохраняем переменную с выбором шифрования

# Выбор для шифрования через оператор if, если пользователь ввел значение 1 или либо метод шифрования
if (encryption_method == "1" ) || (encryption_method == "SHA1")
  puts Digest::SHA1.hexdigest(message)
elsif (encryption_method == "2") || (encryption_method == "MD5")
  puts Digest::MD5.hexdigest(message)
else
  puts Digest::SHA2.hexdigest(message) 
end

puts "Данные успешно закодированы"
