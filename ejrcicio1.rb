class Carta
    attr_reader :numero, :pinta

    def initialize(numero, pinta)

        pintas = ['C','D', 'E', 'T']

        if (numero >= 1 && numero<=13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
            
        else
            raise ArgumentError.new('no es un argumento valido')
        end
    end

end

mazo = []

5.times do |i|
    mazo.push(Carta.new(rand(1...13), ["C", "D", "E", "T"].sample))
end

puts mazo