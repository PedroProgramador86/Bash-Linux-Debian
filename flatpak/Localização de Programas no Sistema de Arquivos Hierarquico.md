Quando você instala um programa no **Debian (ou qualquer sistema Linux)**, os arquivos podem ser espalhados em diversos diretórios, dependendo do **tipo de instalação** (via `apt`, `dpkg`, `flatpak`, manual, etc).

---

### 🗃️ **1. Diretórios principais no sistema (`/`)**

| Diretório                        | O que pode conter                                                  |
| -------------------------------- | ------------------------------------------------------------------ |
| `/usr/bin/` ou `/usr/local/bin/` | Executáveis acessíveis pelo terminal                               |
| `/usr/lib/` ou `/usr/local/lib/` | Bibliotecas usadas pelo programa                                   |
| `/usr/share/`                    | Arquivos de dados, ícones, traduções, etc                          |
| `/etc/`                          | Arquivos de configuração do sistema (ex: `/etc/scenebuilder.conf`) |
| `/opt/`                          | Softwares de terceiros (instalados manualmente)                    |
| `/var/`                          | Arquivos temporários, logs e cache (ex: `/var/log`, `/var/cache`)  |
| `/lib/` ou `/lib64/`             | Bibliotecas compartilhadas                                         |

---

### 👤 **2. Diretórios do usuário (`~`)**

| Diretório                                      | O que pode conter                                                    |
| ---------------------------------------------- | -------------------------------------------------------------------- |
| `~/.config/`                                   | Arquivos de configuração do programa (ex: `~/.config/scenebuilder/`) |
| `~/.local/share/`                              | Dados do usuário (ex: histórico, temas, plugins)                     |
| `~/.local/bin/`                                | Executáveis instalados localmente (sem `sudo`)                       |
| `~/.cache/`                                    | Cache temporário usado por programas                                 |
| `~/.desktop`, `~/.xsession`, `~/.profile`, etc | Arquivos que podem conter inicialização de programas                 |

---

### 📦 **3. Diretórios específicos por tipo de instalação**

#### 📦 `APT` ou `DPKG`

* Executáveis em `/usr/bin/`
* Configs em `/etc/`
* Bibliotecas em `/usr/lib/`
* Dados em `/usr/share/`
* Logs e cache em `/var/`

#### 📦 `Flatpak`

* Armazena tudo em: `~/.var/app/`, `/var/lib/flatpak/`

#### 📦 `Snap`

* Armazena em: `/snap/`, `~/snap/`, `/var/snap/`

#### 📁 Instalação Manual (ex: `.tar.gz`)

* Normalmente colocado em `/opt/NOME/`, `/usr/local/`, ou na `~`

---

