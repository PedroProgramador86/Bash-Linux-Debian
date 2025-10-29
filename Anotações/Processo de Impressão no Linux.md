
# Descrição

Um tutorial básico de como realizar o processo de configuração da impressora no linux

Levando em consideração:

> A configuração da impressora é por WiFi estendido

## 1. Se conectar ao Wi-Fi da impressora

Se conecte ao Wi-Fi da rede ao qual a impressora estar a disponibilizar

## 2. Entre nas configurações da impressora

Pode ser via terminal:

```shell
╭─bazukart@debian /home/bazukart/Downloads  ‹system›    
╰─$ sudo system-config-printer
```

Ou pelo proprio menu de configuração:

```shell
Lançador de Aplicativos > Barra de pesquisa > Configurações de Impressão
```

## 3. Adicione uma Impressora

- Desbloqueie com a sua senha o acesso ás configurações de impressão
- Clique em `Adicionar` para adicionar uma impressora
- Se sua impressora ainda não aparecer nas configurações, acesse:
	1. Impressora de rede
	2. Localizar impressora de rede
	3. Abra o terminal
	4. Descubra o ip da sua impressora:
	```shell
	╭─bazukart@debian /home/bazukart/Downloads  ‹system›    
	╰─$ ip route show  
	default via 192.168.114.1 dev wlp1s0 proto dhcp src 192.168.114.3 metric 600   
	192.168.114.0/24 dev wlp1s0 proto kernel scope link src 192.168.114.3 metric       600
	```
	5. Copie o Ip e coloque no campo "Nome da Maquina"
	6. Em seguida, Localizar > Next > Next > Next...

Observações:

- Em caso de duvidas na descoberta do endereço IP da impressora:

> Acesse a impressora localmente e aperte no "i" que exibirá informações sobre ela, incluindo o IP