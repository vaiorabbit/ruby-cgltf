#!/usr/local/bin/zsh
export PYTHONPATH=/opt/homebrew/opt/llvm/lib/python3.9/site-packages
/opt/homebrew/bin/python3 generate_cgltf.py > ../lib/cgltf_main.rb
