
=begin
control = "s"
lista_media = []
lista_nome = []
aluno = {"nome":"", "mat":0,"pt":0,"cie":0,"media":0}
while control == "s"
    print("Introduza o nome do aluno: ")
    aluno["nome"] = gets.to_s
    print("\n Introduza a nota de Matemática: ")
    aluno["mat"] = gets.to_f
    print("\n Introduza a nota de Português: ")
    aluno["pt"] = gets.to_f
    print("\n Introduza a nota de Ciências: ")
    aluno["cie"] = gets.to_f
    
    aluno["media"]= (aluno["mat"]+aluno["pt"]+aluno["cie"])/3
    print("#{aluno["media"]}")
    lista_media.push(aluno["media"])
    lista_nome.push(aluno["nome"])
    print("Deseja continuar?")
    control=gets.chomp.to_s
end
lista_media.each do |elemento|
    puts elemento
end
resultado = media < 4 ? "Reprovado" : ((media >= 5 && media <= 6.9) ? "Recuperação" : "Aprovado")



print("\n Nome: #{nome}\n   Matemática: #{mat}\n   Português: #{pt}\n   Ciências: #{cie}\n   Média: #{media}\nSituação: #{resultado}\n")
=end

require 'byebug'

lista = []
while true

    puts("Digite uma das opcões abaixo")
    puts("1 - Cadastrar")
    puts("2 - Relatorio")
    puts("3 - Sair")

    menu = gets.strip 
    break if( menu == "3")

    case menu
    when "1"
      # TODO cadastro
        aluno = {}
        print("Introduza o nome do aluno: ")
        aluno["nome"] = gets.chomp.to_s
        print("\n Introduza a nota de Matemática: ")
        aluno["mat"] = gets.chomp.to_f
        print("\n Introduza a nota de Português: ")
        aluno["pt"] = gets.chomp.to_f
        print("\n Introduza a nota de Ciências: ")
        aluno["cie"] = gets.chomp.to_f
        aluno["media"]= (aluno["mat"]+aluno["pt"]+aluno["cie"])/3
        lista.push(aluno)
    when "2"
      # TODO Relatório
        lista.each do |elemento|
            resultado = elemento["media"] < 4 ? "Reprovado" : ((elemento["media"] >= 5 && elemento["media"] <= 6.9) ? "Recuperação" : "Aprovado")
            print("\nSituação de #{elemento["nome"]} : #{resultado} com media #{elemento["media"]}\n")
        end
    else
      system "clear" or system "cls"
      puts("Opção inválida")
    end
end