class Autor < ApplicationRecord
  validates :nome, presence: true

  def formata_nomes(nome_contador, nome)
    if nome_contador == nome.size
      array_sobrenome = ['FILHO', 'FILHA', 'NETO', 'NETA', "SOBRINHO", 'SOBRINHA', 'JUNIOR']
      array_nome = []

      nome.each do |nomes|
        separa_nome = nomes.split
        if separa_nome.size < 2
          array_nome.push(separa_nome.first.upcase)
        elsif separa_nome.size == 2
          array_nome.push("#{separa_nome.last.upcase}, #{separa_nome.first.capitalize}")
        else
          espaco_nome = ''
          if array_sobrenome.include?(separa_nome.last.upcase)
            limit = separa_nome.length - 2
            (0...limit).each do |i|
              espaco_nome += "#{separa_nome[i].capitalize} "
            end
            array_nome.push("#{separa_nome[1].upcase} #{separa_nome.last.upcase}, #{espaco_nome.strip}")
          else
            limit = separa_nome.length - 1
            (0...limit).each do |i|
              if verificar_palavra(separa_nome[i])
                espaco_nome += "#{separa_nome[i]} "
              else
                espaco_nome += "#{separa_nome[i].capitalize} "
              end
            end
            array_nome.push("#{separa_nome.last.upcase}, #{espaco_nome.strip}")
          end
        end
      end
      return array_nome
    else
      raise 'Necessario que o número de nomes seja igual a quantidade de nomes a serem inseridos'
    end
  end
  def verificar_palavra(nome)
    nome.upcase == 'DA' || nome.upcase == 'DAS' || nome.upcase == 'DE' || nome.upcase == 'DO' || nome.upcase == 'DAS'
  end
end

