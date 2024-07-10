#!/bin/bash
PYTHON3_VENV_DIR=$HOME"/python3_venv"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  PM="sudo apt"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  PM="brew"
fi

if [[ "$SHELL" == "/bin/bash" ]]; then
  INIT=$HOME"/.bashrc"
elif [[ "$SHELL" == "/usr/bin/zsh" ]]; then
  INIT=$HOME"/.zshrc"
fi

function mk_alias {
  echo "alias vim=nvim" >> $INIT
}

function setting_for_lua {
  $PM install lua
}

function setting_for_tex {
  $PM install zathura
  $PM install okular
}

function setting_for_ocaml {
  opam install ocaml-lsp-server
}

function setting_for_cpp {
  $PM install ccls
  $PM install bear
}

function setting_for_python {
  $PM install python3
  python3 -m venv $PYTHON3_VENV_DIR
  source $PYTHON3_VENV_DIR/bin/activate
  $PYTHON3_VENV_DIR/bin/pip install --upgrade pip
  $PYTHON3_VENV_DIR/bin/pip install pyright
}

function install_lsp {
  setting_for_cpp
  setting_for_ocaml
  setting_for_tex
  setting_for_python
}

function set_nvim {
  mv nvim $HOME/.config/
}

install_lsp
set_nvim
mk_alias
