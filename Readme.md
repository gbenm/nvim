# Configuración para Neovim
Esta configuración está hecha para Neovim 0.6.0

## Configuración
La primera vez que se usa esta configuración se comenzará
a instalar packer.nvim, probablemente pida un Enter de su
teclado para continuar, posterior a eso se instalan los
plugins, cuándo se termina este proceso se aplica el tema,
sin embargo no todos los plugins están cargados, por lo que
es necesario cerrar y volver abrir el Neovim.

Nota: también se quedará instalando los parsers de TreeSitter
para que se mejore el highlight para los archivos, esto puede
tardar, pero es algo que se hace en background.

- Fuente para los iconos: **DejaVu Sans Mono Bold Nerd Font Complete**
- Lugar de instalación para Linux: ~/.local/share/fonts

## Atajos
La tecla líder (`<leader>`) es `;`, esto se puede cambiar desde
`init.lua` justo en la primera línea.

Nota: `<c-n>` denota Ctrl+n, así con otras combinaciones. Los buffer
en esta configuración son los que aparecen representados
como pestañas.


### Básicos
- `;w` Guardar el archivo
- `;q` Cerrar la ventana actual
- `;wq` Guardar el buffer actual y Cerrar la ventana
- `fd` Regresa al modo normal
- `<c-n>` Ir al siguiente buffer
- `<c-p>` Ir al buffer anterior
- `;bd` Cerrar el buffer actual

## Estructura del proyecto
(Explicar orden y porqué de las carpetas)
