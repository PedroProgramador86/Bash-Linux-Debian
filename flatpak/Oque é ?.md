O *Flatpak* é um sistema de empacotamento e distribuição de aplicativos para Linux que permite instalar 
e executar programas de forma **isolada (sandboxed)** do restante do sistema. 
Ele foi criado para resolver problemas de compatibilidade entre diferentes distribuições Linux e tornar 
o empacotamento de software mais simples e seguro.

### Principais características do Flatpak:

✅ **Independente da distribuição**:
Você pode instalar o mesmo aplicativo Flatpak no Ubuntu, Fedora, Debian, Arch, etc., sem precisar se 
preocupar com bibliotecas específicas de cada sistema.

✅ **Sandbox (isolamento)**:
Os aplicativos rodam em um ambiente isolado, com acesso controlado ao sistema (arquivos, rede, 
dispositivos). Isso aumenta a segurança.

✅ **Atualizações mais fáceis**:
Flatpaks podem ser atualizados automaticamente ou manualmente com um único comando. As atualizações 
são rápidas, pois usam *delta updates* (baixam só o que mudou).

✅ **Dependências inclusas**:
Os aplicativos vêm com suas próprias bibliotecas (runtimes), então não dependem das versões do sistema.

✅ **Repositório central (Flathub)**:
O [Flathub](https://flathub.org) é o repositório mais popular de Flatpaks. Lá você encontra programas 
como Firefox, LibreOffice, VSCode, Steam, etc.

---

### Exemplo de comandos com Flatpak:

```bash
# Instalar o Flatpak (em distros baseadas no Debian/Ubuntu)
sudo apt install flatpak

# Adicionar o repositório Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Instalar um app (ex: VLC)
flatpak install flathub org.videolan.VLC

# Rodar o app
flatpak run org.videolan.VLC
```
