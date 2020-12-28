
puts "Qual seu nome ?"
nome = gets.chomp
puts " Qual sua idade ? "
idade = 7
idade = gets.chomp.to_i

if (idade >=18)
    puts " #{nome}  , você tem #{idade} anos você vai tirar carteira de motorista ."

elsif (idade >=7)
    puts nome " #{nome}, você tem  #{idade} anos e portanto deve andar de bicicleta . "

else
    puts nome " #{nome}, você tem #{idade} anos e deve andar de motoca ."
end
