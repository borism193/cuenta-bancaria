class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip

    def initialize(nombre_de_usuario,  numero_de_cuenta, vip = 0)
        @nombre_de_usuario =  nombre_de_usuario
        @vip = vip
        
        if numero_de_cuenta.digits.count == 8
        
            @numero_de_cuenta = numero_de_cuenta
        
        else
            raise ArgumentError.new ('verifique sus ocho digitos')
        end
    end    

end

cuenta1 = CuentaBancaria.new('jose', 15235487)

ceunta2 = CuentaBancaria.new('loreto', 12345862, 1)

def cuenta_vip (cuentas)
    if cuentas.vip == 1 
        return "1-#{cuentas.numero_de_cuenta}"
    else
        "0-#{cuentas.numero_de_cuenta}"
    end
end

cuenta1_v= cuenta_vip(cuenta1)
cuenta2_v= cuenta_vip(ceunta2)

puts cuenta1_v
puts cuenta2_v
