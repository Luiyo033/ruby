#Descripcion
#Esto es un programa que transforma unidades de longitud entre ellas. 
#Va desde Milimetros a Kilometros.
class TransformadorDeLongitud
    
    attr_accessor :numero #Numero de la unidad
    attr_accessor :unidadOriginal #Unidad original
    attr_accessor :unidadNueva #Nueva unidad
    def initialize
     puts  "Por favor, inserte el numero: "
     @numero = gets
     puts "Inserte la unidad original(mm,cm,dm,m,km): "
     @unidadOriginal = gets
     puts "Inserte la unidad que deseas(mm,cm,dm,m,km): "
     @unidadNueva = gets
     transformador()
    end
    
    #Aqui se transforman las unidades
   def transformador
        numero = (@numero).to_f #Si utilizas cualquier otra cosa que nos sea un numero o float/decimal
                                 #El programa lo transformara a 0.0 por defecto
            case @unidadOriginal.chomp
            #Milimetros
            when "mm", "MM"
                if @unidadNueva.chomp == "cm" || @unidadNueva.chomp == "CM"
                    puts "tu resulado %.2f" % (numero/10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "dm" || @unidadNueva.chomp == "DM"
                    puts "tu resulado %.2f" % (numero/100.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "m" || @unidadNueva.chomp == "M"
                    puts "tu resulado %.2f" % (numero/1000.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "km" || @unidadNueva.chomp == "KM"
                    puts "tu resulado %.5f" % (numero/1000000.000).to_s + @unidadNueva
                else
                    puts "Introdusca una unidad correcta"
                end
            #Centimetos
            when "cm", "CM"
                if @unidadNueva.chomp == "mm" || @unidadNueva.chomp == "MM"
                    puts "tu resulado %.2f" % (numero*10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "dm" || @unidadNueva.chomp == "DM"
                    puts "tu resulado %.2f" % (numero/10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "m" || @unidadNueva.chomp == "M"
                    puts "tu resulado %.2f" % (numero/100.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "km" || @unidadNueva.chomp == "KM"
                    puts "tu resulado %.5f" % (numero/100000.000).to_s + @unidadNueva
                else
                    puts "Introdusca una unidad correcta"
                end
            #Decimetros
            when "dm", "DM"
                if @unidadNueva.chomp == "mm" || @unidadNueva.chomp == "MM"
                    puts "tu resulado %.2f" % (numero*100.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "cm" || @unidadNueva.chomp == "CM"
                    puts "tu resulado %.2f" % (numero*10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "m" || @unidadNueva.chomp == "M"
                    puts "tu resulado %.2f" % (numero/10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "km" || @unidadNueva.chomp == "KM"
                    puts "tu resulado %.5f" % (numero/10000.000).to_s + @unidadNueva
                else
                    puts "Introdusca una unidad correcta"
                end
            #Metros
            when "m", "M"
                if @unidadNueva.chomp == "mm" || @unidadNueva.chomp == "MM"
                    puts "tu resulado %.2f" % (numero*1000.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "cm" || @unidadNueva.chomp == "CM"
                    puts "tu resulado %.2f" % (numero*100.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "dm" || @unidadNueva.chomp == "DM"
                    puts "tu resulado %.2f" % (numero*10.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "km" || @unidadNueva.chomp == "KM"
                    puts "tu resulado %.5f" % (numero/1000.000).to_s + @unidadNueva
                else
                    puts "Introdusca una unidad correcta"
                end
            #Kilometros
            when "km", "KM"
            if @unidadNueva.chomp == "mm" || @unidadNueva.chomp == "MM"
                    puts "tu resulado %.2f" % (numero*1000000.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "cm" || @unidadNueva.chomp == "CM"
                    puts "tu resulado %.2f" % (numero*100000.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "dm" || @unidadNueva.chomp == "DM"
                    puts "tu resulado %.2f" % (numero*10000.000).to_s + @unidadNueva
                elsif @unidadNueva.chomp == "m" || @unidadNueva.chomp == "M"
                    puts "tu resulado %.2f" % (numero*1000.000).to_s + @unidadNueva
                else
                    puts "Introdusca una unidad correcta"
                end
            else
                puts "Introduzca una unidad correcta, por favor"
            end

    end
end