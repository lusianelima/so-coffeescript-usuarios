require './stdlib'

# testando...

escreve "Oi!"

x = 10
mostra x

escreve "Digite um número: "
x = recebe()
printf "%d", x

print "Senha:"
s = input_password '*'
print "hash: " + hash_md5( s )

print color('r', 'vermelho')

print random 1, 5

x = [10, 20, 30]
n = len x

x.add( 40 )
x.delete( 0 )

for i in [0...n]
    print x[i]

