
lista= []

while true
aluno={}
soma= 0.0
puts("Digite uma das opcões abaixo")
puts("1 - Cadastrar\n2 - Relatorio\n3 - Sair")
    menu = gets.chomp.to_s
    break if(menu=='3')
    if menu=='1'
        print("Digite o nome do aluno: ")
        aluno['nome'] = gets.chomp.to_s
        print("Digite a nota de matemática: ")
        mat = gets.chomp.to_f
        print("Digite a nota de português: ")
        pt = gets.chomp.to_f
        print("Digite a nota de ciências: ")
        ci = gets.chomp.to_f
        aluno['media']=(mat+pt+ci)/3
        lista.push(aluno)
    elsif menu=='2'
        lista.each do |aluno|
            situacao = aluno['media'] < 4 ? "Reprovado" : (aluno['media'] <= 6.9) ? "Recuperação" : "Aprovado"
            print("\nNome: #{aluno['nome']}\nMédia: #{aluno['media']}\nSituação: #{situacao}")
            #soma= soma+aluno['media']
            soma = aluno.map { |numero| numero[:media].to_f }.sum
        end
        #soma= soma/lista.length
        puts "\nA média geral é #{soma}"
    else
        puts "\n!!!Opção inválida!!!"
    end
end
=begin
numeros = [{'nome': 'nome', 'numero': '1.2'}]
soma = numeros.map { |numero| numero[:numero].to_f }.sum
puts soma
=end