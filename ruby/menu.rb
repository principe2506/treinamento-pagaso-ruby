require_relative 'funcoes.rb'
lista= []
alunos= []
while true
soma= 0.0
puts("Digite uma das opcões abaixo")
puts("1 - Cadastrar\n2 - Relatorio\n3 - Sair")
    menu = gets.chomp.to_s
    break if(menu=='3')
    if menu=='1'
        cadastro(alunos)
    elsif menu=='2'
        alunos.each do |aluno|
            puts("Nome: #{aluno["nome"]}")
            puts("Notas: #{aluno["notas"]}")
            media = aluno["notas"].map{|materia_com_not| materia_com_not[:nota]}.sum / aluno["notas"].length
            print("Média: #{media}\n")
        end
    else
        puts "\n!!!Opção inválida!!!"
    end
end