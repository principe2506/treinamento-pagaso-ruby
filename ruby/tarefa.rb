print("Introduza o nome do aluno: ")
nome = gets.chomp.to_s
print("\n Introduza a nota de Matemática: ")
mat = gets.chomp.to_f
print("\n Introduza a nota de Português: ")
pt = gets.chomp.to_f
print("\n Introduza a nota de Ciências: ")
cie = gets.chomp.to_f

media= (mat+pt+cie)/3

resultado = media < 4 ? "Reprovado" : ((media >= 5 && media < 6.9) ? "Recuperação" : "Aprovado")

print("\n Nome: #{nome}\n   Matemática: #{mat}\n   Português: #{pt}\n   Ciências: #{cie}\n   Média: #{media}\nSituação: #{resultado}\n")