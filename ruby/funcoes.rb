
def cadastro(alunos)
    aluno={}
    print("Digite o nome do aluno: ")
    aluno['nome'] = gets.chomp.to_s
    3.times do |i|
        print("Digite o nome da matéria: ")
        nome_materia = gets
        print("Digite a nota: ")
        nota = gets.chomp.to_f
        aluno["notas"] ||= []
        aluno['notas'].push({
            materia: nome_materia,
            nota: nota
        })  
        alunos << aluno
    end
    return alunos
end