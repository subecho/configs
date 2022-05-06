function make_venv
  python -m venv .venv
  source .venv/bin/activate.fish
  pip install --upgrade pip setuptools wheel
end

