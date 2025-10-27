
# 1. O que é uma partição ?

Uma partição é uma divisão lógica de um disco físico.
## Analogia:

Pense no disco como um terreno grande (ex: /dev/sda).
Você pode dividir esse terreno em lotes (ex: /dev/sda1, /dev/sda2, ....).

Cada "lote" pode ter um sistema de arquivos diferente e pode servir para funções diferentes

> Como armazenar o sistema operacional, arquivos pessoais , ou até a memória swap.

# 2. Estrutura básica de discos e partições no Linux

## Nomes de dispositivos

- `/dev/sda` → primeiro disco SATA
- `/dev/sdb` → segundo disco SATA
- `/dev/nvme0n1` → primeiro disco NVMe

E as partições dentro deles:

- `/dev/sda1`, `/dev/sda2`, `/dev/sda3` ...
- `/dev/nvme0n1p1`, `/dev/nvme0n1p2` ...

# 3. Tipos de tabela de partição

O layout de partições é definido por uma tabela de partição, e existem dois tipos principais:

| Tipo                           | Características                                                            |
| ------------------------------ | -------------------------------------------------------------------------- |
| **MBR (Master Boot Record)**   | Antigo, suporta até 4 partições primárias e discos até 2 TB                |
| **GPT (GUID Partition Table)** | Novo, suporta até 128 partições e discos enormes (exabytes), usado em UEFI |

> Hoje em dia o padrão é o GPT, especialmente em sistemas UEFI.

# 4. Ferramentas para ver partições

Mostra discos e partições em forma de árvore:

```shell
lsblk
```

Mostra detalhes técnicos de todas as partições (tamanho, tipo, sistema de arquivos, etc):

```shell
sudo fdisk -l
```

Mostra o uso de espaço de cada partição montada:

```shell
df -h
```

Mostra onde cada partição está montada no sistema

```shell
mount | column -t
```

# 5. Ferramentas principais

O Linux tem várias ferramentas para gerenciar partições, mas as duas mais usadas são:

| Ferramenta | Interface                           | Indicação                     |
| ---------- | ----------------------------------- | ----------------------------- |
| `fdisk`    | Modo texto interativo               | Discos MBR ou GPT simples     |
| `parted`   | Mais moderna, suporta GPT e scripts | Discos grandes ou setups UEFI |

> O `fdisk` é ótimo para aprender, porque ele mostra todo o processo manualmente.