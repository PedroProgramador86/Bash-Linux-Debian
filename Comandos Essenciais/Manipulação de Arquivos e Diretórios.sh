# Cria um arquivo vazio
# "touch" - tocar

touch [nome/do/arquivo]

# Cria um diretorio
# "mkdir" - make directory

mkdir [nome/do/diretorio]

# Remover um arquivo ou diretorio
# "rm" - remove

rm [opções] [nome/do/arquivo \ou\ /diretorio]

# [opções]:

# [apenas rm] remove um arquivo
# -f Força uma remoção (Sem fazer perguntas)
# -i Remove de forma interativa (fazendo perguntas)
# -I Pergunta antes de remover vários arquivos ou um diretório. Menos interativo que -i
# -r ou -R Remove de forma recursiva (Utilizada bastante para remover diretorios com seus conteudos)
# -d Remove diretorios vazios (Mesmo que rmdir)
# --preserve-root Protege o diretorio / contra remoção
# --no-preserve-root Permite apagar o / (NUNCA USE!)


# Remove um diretorio
# "rmdir" - remove directory

rm [nome/do/diretorio]
# (obs: Remove apenas um diretorio vazio)

# Faz copia de arquivos/Diretorios
# "cp" - copy

cp [opções] [origem] [destino/novoNome]

# [opções]:
# -r ou -R Copia diretórios recursivamente (obrigatório para pastas)
# -i Interativo: pergunta antes de sobrescrever arquivos existentes
# -f Força a cópia, sobrescrevendo arquivos sem perguntar
# -u Copia somente se o arquivo de origem for mais recente que o de destino ou se ele ainda não existir
# -v Modo verboso: mostra o que está sendo copiado
# -a Arquivamento: copia tudo mantendo permissões, links simbólicos, timestamps, etc
# (equivale a -dR --preserve=all). Ideal para backups
# -p Preserva atributos como permissões, dono e timestamps
# -n Não sobrescreve arquivos existentes no destino

# Mover arquivos/diretorios
# "mv" - move

mv [origem] [destino/novoNome]
