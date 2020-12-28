

rogerio = {nome: "Rogerio", email:"raguile@hotmail.com", chato:true}

puts rogerio[:nome]
puts rogerio [:email]
puts rogerio [:chato]

tereza ={nome: "Tereza", email: "tereza1@hotmail.com", chato:false}

puts tereza [:nome]
puts tereza [:email]
puts tereza [:chato]

pessoas = [rogerio, tereza]

pessoas [0]
pessoas [1]

puts pessoas[0][:nome]

puts pessoas [1] [:email]