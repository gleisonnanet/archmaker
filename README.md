# ArchMaker
> Crie de forma rápida e fácil sua própria distribuição GNU / Linux baseada em arquitetura.

ArchMaker é um programa que gera scripts que podem então gerar um arquivo iso de sua própria distribuição. 

Basta selecionar os programas que deseja instalar, uma pasta / etc / skel, inserir algumas informações e selecionar uma apresentação de slides. Ele usa o archiso para gerar o arquivo ISO e  [Calamares](https://www.calamares.io) como o instalador. 

![](https://archmaker.guidedlinux.org/screenshotqt.png)

## Dependências 

* **Arch Linux (64 bit)** - base-devel
* git
* QT5
* archiso (runtime)
* xterm (runtime)

## Installation

### Building

Para obter as dependências :
```sh
sudo pacman -S base-devel git qt5-base archiso xterm
```
Agora você precisa clonar o Github-Repository :
```sh
git clone https://github.com/guidedlinux/archmaker.git && cd archmaker
```
Depois disso, você pode compilar o ArchMaker :
```sh
mkdir build && cd build
qmake ..
make
sudo make install
```

Isso irá instalar o arquivo .desktop em  /usr/share/applications/

### From the AUR (outdated)

Para construir o pacote a partir do AUR, é recomendado usar um AUR-Helper  (e.g. yaourt, pacaur). Então você pode correr :
```sh
yaourt -S archmaker
```
or
```sh
pacaur -S archmaker
```
## Compartilhando sua distro 

Depois de gerar sua iso, você pode carregá-la (em qualquer lugar) e compartilhar o link em  [the gallery](https://archmaker.guidedlinux.org/gallery/).

## Release History

* Initial Commit

## Meta

Hannes Schulze – [guidedlinux.org](https://www.guidedlinux.org/) – projects@guidedlinux.org

Distributed under the GPL-3.0 license. See ``LICENSE`` for more information.

[https://github.com/guidedlinux/](https://github.com/guidedlinux/)

## Contributing

1. Fork it (<https://github.com/guidedlinux/archmaker/fork>)
1. Create your feature branch (`git checkout -b feature/fooBar`)
1. Commit your changes (`git commit -am 'Add some fooBar'`)
1. Push to the branch (`git push origin feature/fooBar`)
1. Create a new Pull Request
