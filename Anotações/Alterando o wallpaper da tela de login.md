
# Descrição

Aqui será realizado a alteração do wallpaper da tela inicial de login (ou tela de seleção de usuários) do ambiente gráfico KDE plasma

> Esse procedimento vai depender do gerenciador de login (display manager) que o sistema está utilizando<br>
> Para este caso o "sddm"

---

## 1. Verificar se o sistema do Debian utiliza o "sddm"

Antes de mais nada é necessário verificar qual o gerenciador de login que o sistema operacional utiliza mandando um `cat` no arquivo especificado

```shell
╭─bazukart@debian /home/bazukart  ‹system› 
╰─$ cat /etc/X11/default-display-manager
/usr/bin/sddm
```

## 2. Realizar a mudança do wallpaper escolhido para "/usr/share/wallpapers/"

Esse procedimento é opcional, mas recomendado por questões de segurança da imagem

```
╭─bazukart@debian /usr/share/wallpapers  ‹system› 
╰─$ sudo cp /home/bazukart/Imagens/blackred.jpg /usr/share/wallpapers/debianwallpaper.jpg
```

Observação:
> Memorize o caminho que está o arquivo da imagem desejada
## 3. Alterando o arquivo de configuração do wallpaper padrão

Aqui eu percorri até o arquivo de configuração do tema sddm (/usr/share/sddm/themes/breeze/theme.conf) e alterei para o caminho background para o meu wallpaper

Antes:
```shell
╭─bazukart@debian /usr/share/sddm/themes/breeze  ‹system›    
╰─$ cat theme.conf    
[General]  
showlogo=hidden  
showClock=true  
logo=/usr/share/sddm/themes/breeze/default-logo.svg  
type=image  
color=#1d99f3  
fontSize=10  
# Wallpaper antigo padrão do Breeze:  
background=/usr/share/wallpapers/Next/contents/images/5120x2880.png  
needsFullUserModel=false
```

Depois:
```shell
╭─bazukart@debian /usr/share/sddm/themes/breeze  ‹system›    
╰─$ cat theme.conf    
[General]  
showlogo=hidden  
showClock=true  
logo=/usr/share/sddm/themes/breeze/default-logo.svg  
type=image  
color=#1d99f3  
fontSize=10  
# Wallpaper novo:  
background=/usr/share/wallpapers/blackred.jpg  
needsFullUserModel=false
```

## 4. Reiniciar o SDDM para aplicar:

Por fim, reiniciar o SDDM para fazer a aplicação do wallpaper
(Nada que reiniciar o sistema possa fazer o mesmo)

```shell
╭─bazukart@debian /usr/share/sddm/themes/breeze  ‹system›    
╰─$ sudo systemctl restart sddm
```

# Observações

> Leve em consideração que os procedimentos descritos funcionaram no display manager sddm<br>
> Atente-se nos caminhos de navegação entre os diretórios e arquivos<br>
> Caso de falha na especificação do caminho no arquivo `theme.conf` o wallpaper mostrado pode ficar branco