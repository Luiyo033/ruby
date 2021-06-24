#Maximo comun divisor y minimo comun multiplo.
#Este es un programa que encuentra el maximo comun divisor y el minimo comun multiplo de 2 numeros

class MinimoComunMultiploYMaximoComunDivisor
    @@Numeros = Array.new
    $Alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'] #Para evitar que strings entren
    def initialize
        #Aqui se entran los numeros.
        puts "Por favor, inserte los numero de los que desea encontrar el MCM y el MCD :"
        @inputs = gets.chomp
        if $Alphabet.include?(@inputs)
            puts "Por favor introdusca valores validos (Enteros)."     
        else
            while @@Numeros.size != 2
                @@Numeros.push(@inputs.to_i)
                if @@Numeros.size == 1
                    puts "Por favor introdusca otro numero: "
                    @inputs = gets.chomp  
                end
            end
            print @@Numeros.to_s + "\n"
            maximoComunDivisor()
            minimoComunMultiplo() 
        end
        
    end

    def minimoComunMultiplo
        @var1 = Array.new #Aqui se guardan los numeros que nacen de multiplicar el primer elemento del array
        @var2 = Array.new #Aqui se guardan los numeros que nacen de multiplicar el segundo elemento del array
        @resultado = Array.new
        for i in 0..@@Numeros.size #Se guardan los resultados
            for u in 1...10
                if i == 1
                    y = @@Numeros[1] * u 
                    @var2.push(y)
                else
                   y = @@Numeros[0] * u
                    @var1.push(y)
                end
            end 

        end
        puts "El minimo comun multiplo es: "
        #Aqui se revisa si en la variable 1 existe algun numero que este incluido en la variable 2
        for a in 0..@var1.size 
            if @var2.include?(@var1[a])
                @resultado.push(@var1[a])
                break #Se corta una vez se encuentra el primer numero que ambas varibales comparte. Este es el MCM
            end   
        end
        puts @resultado
    end
    

    def maximoComunDivisor
        @var3 = Array.new #Aqui se guardan los numeros que nacen de dividir del primer elemento del array entre 10 numeros
        @var4 = Array.new #Aqui se guardan los numeros que nacen de dividir del segundo elemento del array entre 10 numeros
        @resultado2 = Array.new
        for i in 1...10 do #Pimera variable
            if @@Numeros[0] % i == 0
                @var3.push(i)
            end
        end

        for a in 1...10 do #segunda variable
            if @@Numeros[1] % a == 0
                @var4.push(a)
            end
        end
        #Aqui se revisa si en la variable 3 hay numero parecidos a los de la variable 4
        for b in 0...@var3.size do
            if @var3.include?(@var4[b])
                @resultado2.push(@var4[b])
            end
        end
        puts "El maximo comun divisior es: "
        mcd = @resultado2[@resultado2.size-1] * @resultado2[@resultado2.size-2] #Se multiplican el ultimo y el penultimo numero del resultado anterior
        puts mcd                                                                #El resultado es el  MCD
            
    
    end

end

MinimoComunMultiploYMaximoComunDivisor.new