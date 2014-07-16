# # ¡ Hola !
#
# Este "Lab" enseña la sintaxis basica de funciones en Ruby
#
# ## Abra un terminal en este directorio
#
#     cd 00_hola
#
# Este directorio es el punto de entrada del ejercicio. 
# Contiene un fichero de test de tipo "spec" y deberas añadir un fichero Ruby que ( eventualmente ) haga pasar los test de las "specs."
#
# ## Ejecute el test
#
#     rake
#
# ## Vea como falla
#
# Podras ver un error. ** ¡ No te asustes !** Intenta leerlo y trata de figurarte que quiere decirte la computadora con el. En algun lugar de la primera linea deberia decir algo como 
#
#     no such file to load -- test-first-teaching/hola/hola (LoadError)
#
# Significa que esta buscando un fichero llamado `hola.rb` y no puede encontrarlo.
#
# ## Crea `hola.rb`
#
# Abre `hola.rb` in un editor de textos. Grábalo. Ejecuta el test otra vez.
#
#     rake
#
# ## Mira como falla
#
# Ahora deberias ver un error como este:
#
#     la funcion hola dice
#       dice hola (FAILED - 1)
#
#     Failures:
#
#       1) la funcion hola dice hola
#          Failure/Error: hola.should == "¡ Hola!"
#          NameError:
#            undefined local variable or method `hola' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001009b8808>
#          # ./hola/hola_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# ## Crea la funcion hola
#
# Arregla esto abriendo `hola.rb` y creando una funcion vacia:
#
#     def hola
#     end
#
# Grábalo. Ejecuta el test de nuevo.
#
# ## Mira como falla
#
# Ahora puedes ver un error como este:
#
#     la funcion hola
#       dice hola (FAILED - 1)
#
#     Failures:
#
#       1) the hola function says hola
#          Failure/Error: hola().should == "¡ Hola !"
#            expected: "¡ Hola !"
#                 got: nil (using ==)
#          # ./hola/hola_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# Esto significa que aunque ha encontrado el fichero, y tambien ha encontrado la funcion que buscaba, esta ultima: ¡ NO devuelve nada ! ( "nil" es la forma que tiene Ruby de decir que " ¡ No hay nada !". )
#
# ## Haga que devuelva algo
#
# Dentro de la funcion "hola", pon una sola linea que contenga un cadena de texto que *NO* es "¡ Hola !". ( Aqui estamos simulando que cometes un pequeño error, para que puedas ver el aspecto que tiene el mensaje de error. )
#
#     def hola
#       "¡ guau !"
#     end
#
# Grabalo. Ejecuta el test de nuevo.
#
# ## Mira como falla
#
# Ahora deberias poder ver un error como este:
#
#     1) la funcion hola dice hola
#        Failure/Error: hola().should == "¡ Hola!"
#          expected: "¡ Hola!"
#               got: "¡ guau !" (using ==)
#        # ./hola/hola_spec.rb:5:in `block (2 levels) in <top (required)>'
#
# Corrije este error cambiando "¡ guau !" por "¡ Hola !". Grábalo. Ejecuta el test otra vez.
#
# ## ¡ Mira como SI pasa ahora !
#
#
# ## ¡ Chocate "los 5" tu mismo !
#
# Ademas, canta una cancion y haz un pequeño baile.
#
# ## Y entonces...
#
# ¡ Arregla el siguiente fallo ! `:-)`
#
#     la funcion hola 
#       dice hola
#
#     la funcion saludar
#       dice hola a alguien (FAILED - 1)
#
# En orden a conseguir que pase el siguiente test, tu funcion debera aceptar un *argumento*.
#
#     def saludar(alguien)
#       "¡ Hola, #{alguien} !"
#     end
#
require "hola"

describe "la funcion hola" do
  it "dice hola" do
    hola.should == "¡ Hola !"
  end
end

describe "la funcion saludar" do
  it "dice hola a alguien" do
    saludar("Alicia").should == "¡ Hola, Alicia !"
  end

  it "dice hola a cualquiera" do
    saludar("Roberto").should == "¡ Hola, Roberto !"
  end
end
