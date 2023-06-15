print("Introduza o nome do aluno: ")
nome = gets.chomp.to_s
print("\n Introduza a nota de Matemática: ")
mat = gets.chomp.to_f
print("\n Introduza a nota de Português: ")
pt = gets.chomp.to_f
print("\n Introduza a nota de Ciências: ")
cie = gets.chomp.to_f
print("\n Introduza a nota de Ciências: ")
print("\n Nome: #{nome}")
print("\n   Matemática: #{mat}")
print("\n   Português: #{pt}")
print("\n   Ciências: #{cie}")
media= (mat+pt+cie)/3
print("\n   Média: #{media}")

if(media < 4)
    print ("\n Situação: Reprovado\n")
elsif(media < 6.9)
    print ("\n Situação: Recuperação\n")
else
    print ("\n Situação: Aprovado\n")
end