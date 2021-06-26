#Problemas de fracciones
#Calculadora sencilla de fracciones. Notese que no puede simplificar.
class Fracciones
    $Alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'] #Para evitar que strings entren strings
    def initialize
        @fraccion1
        @fraccion2
        @resultado
        @problema
        puts "Inserte la primera fracción: "
        @fraccion1 = gets.chomp
        puts "Inserte +,-,*, o, /: "
        @problema = gets.chomp
        puts "Inserte la segunda fraccion: "
        @fraccion2 = gets.chomp 

        #Aqui se verifica que todo este correcto. Ademas de elegir lo que  se desea hacer con la fracciones dadas
        if @fraccion1 == "" || $Alphabet.include?(@fraccion1[0]) || $Alphabet.include?(@fraccion1[2])
            puts "Por favor introduzca valores validos. Deben ser enteros(1) o flotantes(1.0)."
        elsif @fraccion2 == "" || $Alphabet.include?(@fraccion2[0]) || $Alphabet.include?(@fraccion2[2])   
            puts "Por favor introduzca valores validos. Deben ser enteros(1) o flotantes(1.0)."
        else
           "Su resulado es: "
           case @problema
           when "+"
               suma()
           when "-"
               resta()
           when "*"
                multiplicacion()
           when "/"
                division()
           else
             puts "El simbolo no es valido."   
           end
        end
    end
    #Suma
    def suma
        if @fraccion1[2] == @fraccion2[2]
            @resultado = (@fraccion1[0].to_i + @fraccion2[0].to_i).to_s + "/" + @fraccion1[2]
            puts @resultado
        else
            @resultado = (@fraccion1[0].to_i * @fraccion2[2].to_i + @fraccion1[2].to_i * @fraccion2[0].to_i).to_s + "/" + (@fraccion1[2].to_i * @fraccion2[2].to_i).to_s
            puts @resultado 
        end
    end

    #Resta
    def resta
        if @fraccion1[2] == @fraccion2[2]
            @resultado = (@fraccion1[0].to_i - @fraccion2[0].to_i).to_s + "/" + @fraccion1[2]
            puts @resultado
        else
            @resultado = (@fraccion1[0].to_i * @fraccion2[2].to_i - @fraccion1[2].to_i * @fraccion2[0].to_i).to_s + "/" + (@fraccion1[2].to_i * @fraccion2[2].to_i).to_s
            puts @resultado 
        end
    end

    #Multiplicacion
    def multiplicacion 
       @resultado = (@fraccion1[0].to_i * @fraccion2[0].to_i).to_s + "/" + (@fraccion1[2].to_i * @fraccion2[2].to_i).to_s
       puts @resultado
    end
    #Division
    def division 
        @resultado = (@fraccion1[0].to_i * @fraccion2[2].to_i).to_s + "/" + (@fraccion1[2].to_i * @fraccion2[0].to_i).to_s
        puts @resultado
     end

end

Fracciones.new