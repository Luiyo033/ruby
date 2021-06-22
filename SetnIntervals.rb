#Matemicas conjuntos e intervalos
#Este programa esta hecho para resolver intervalos y conjuntos simples. 
#Siendo estos los cerrados, abiertos, unidos, y tambien esos que
#No son compartidos por las dos varibles.
class SetAndIntervals
    $Alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    
    def initialize
           @A = Array.new #Sets de A
           @B = Array.new #Sets de B
           a = 0 #Variable que determina el index de @A cuanto se usan letras
           a2 = 0 #Variable que determina el index de @A cuanto se usan numeros
           b = 0 #Variable que determina el index de @A cuanto se usan letras
           b2 = 0 #Variable que determina el index de @A cuanto se usan numeros
        #Valores de A
        puts "Por favor introduzca los valores de A. Escriba \"salir\" para terminar:"
        @Input = gets
        if $Alphabet.include?(@Input.chomp) && @Input.chomp != "salir"
            while @Input != "salir"
                @A[a] = (@Input.chomp)
                a +=1
                puts "¿Desea insertar mas? Escribe el siguiente numero o escriba \"salir\" si acabo\n"
                print "#{@A}\n"
                @Input = gets.chomp
            end
        else
            while @Input != "salir"
                @A[a2] = (@Input.to_i)
                a2 +=1
                puts "¿Desea insertar mas? escriba \"salir\" si acabo \n"
                print "#{@A}\n"
                @Input = gets.chomp
            end 
        end

        #Valores de B
        puts "Por favor introduzca los valores de B. Escriba el siguiente numero o escriba \"salir\" para terminar:"
        @Input = gets
        if $Alphabet.include?(@Input.chomp) && @Input.chomp != "salir"
            while @Input != "salir"
                @B[b] = (@Input.chomp)
                b +=1
                puts "¿Desea insertar mas? escriba \"salir\" si acabo\n"
                print "#{@B}\n"
                @Input = gets.chomp
            end
        else
            while @Input != "salir"
                @B[b2] = (@Input.to_i)
                b2 +=1
                puts "¿Desea insertar mas? escriba \"salir\" si acabo\n"
                print "#{@B}\n"
                @Input = gets.chomp
            end 
        end
        findTheIntersections()
    end

    #Aqui se dan las interseciones
    def findTheIntersections
        intersection = [] #Numeros que A y B comparten
        differenceB = [] #Numeros que B tiene y no A
        differenceA =[] #Numero que A tiene y no B
        puts "Sus intersecciones son: "
        #Aqui se saca la interseccion 
        for i in 0...@B.size
            if @A.include?(@B[i]) == true
                intersection.push(@B[i])
                i +=1 
            end
        end
        #Aqui solo se buscan los numeros diferentes entre A y B
        for u  in 0...@A.size
            if @B.include?(@A[u]) == false
                differenceA.push(@A[u])
                u +=1 
            end
        end
        #Aqui solo se buscan los numeros diferentes entre B y A
        for i  in 0...@B.size
            if @A.include?(@B[i]) == false
                differenceB.push(@B[i])
                i +=1 
            end
        end
        #Aqui se hace la union
        union = intersection + differenceA +differenceB
        #Por ultimo se imprime
        puts "A ⋂ B = #{intersection}"
        puts "A ⋃ B = #{union.sort}"
        puts "A — B = #{differenceA}" 
        puts "B — A = #{differenceB}" 
    end

end

SetAndIntervals.new