class Veiculo 
  attr_accessor :nome, :marca, :modelo #attribute accessors= acessadores de atributos

  def initialize(nome, marca, modelo)
    @nome = nome # é igual this no Java
    self.marca = marca #variaveis de instância
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto"
  end

  def buzinar
    puts 'Beep'
  end

  #   def dirigir
  #     puts "#{nome} iniciando o trajeto."
  #   end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto de carro."
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto de moto."
  end
end

civic = Carro.new('Civic', 'honda', 'so')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'mitsubishi', 'evo')
lancer.ligar 
lancer.buzinar
lancer.dirigir

honda = Moto.new('honda', 'honda', 'SI')
honda.ligar
honda.buzinar
honda.pilotar

evo = Moto.new('evo', 'mitsubishi', 'evo')
evo.ligar
evo.buzinar
evo.pilotar


# tipo de acessores
# attr_accessor
# attr_reader
# attr_writer


# desenvolvimento orientado por comportamento

# tdd desenvolvimento por

# behavior driver development dor ruby desenvolvimento guiado por comportamento
# making tdd productive and fun

# comando cmd 
# bundle initialize
# mkdr unitarios 

# para criar a pasta rspec --initialize