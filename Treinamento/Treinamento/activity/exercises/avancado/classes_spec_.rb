# ruby é uma lingaugem puramente orientada a objeto
# porque no ruby tudo sao objetos
# classes possui atributos e métodos
# caracteristicas e acoes
# carro (nome, marca, modelo ,cor, quantidade de portas etc...)
# ligar, businar, parar, etc

# class carro

#     def ligar
#          puts 'O carro está pronto para iniciar o trajeto'

#     end
# end

#         civic = Carro.new
# civic.nome = 'civic'

# civic.ligar

class Conta
attr_accessor :saldo

    def deposita  (valor)
self .saldo
       puts "Depositando a quantia de #{valor} reais."
    
    end
end
c = Conta.new('Papito')

#c.saldo = 0.0

c.deposita(100.00)
puts c.saldo

c.deposita (10.00)
puts c.saldo
puts c.nome