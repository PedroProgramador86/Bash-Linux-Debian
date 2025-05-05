# Altera Permissões
# "chmod" - change mode

chmod [Usuario(s)] [Atribuir/Remover] [Permissão] [Nome/do/Arquivo \ou \Diretorio]

# [Tipos de Usuarios]
# u - Usuario dono
# g - Grupo que o dono pertence
# o - outros usuarios

# [Tipos Propriedades]
# + Atribuir
# - Remover

# [Tipos de Permissões]
# r - read (Ler) Recebe o valor: 4
# w - write (escrever ou editar) Recebe o valor: 2
# x - execute (executar) Recebe o valor: 1
# (As somas dos valores podem serem feitas para atribuir valores juntos a respectivos
# usuarios)

# Mudar dono de um arquivo
# "chown" - change Owner

chown [Novo/Dono]:[Grupo(opcional)] [arquivo]


