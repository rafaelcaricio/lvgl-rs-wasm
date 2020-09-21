# LVGL Rust to WASM

Example of LVLG in Rust compiling to WASM.

## Setup

- Install Emscripten
``` 
# Get the emsdk repo
git clone https://github.com/emscripten-core/emsdk.git

# Enter that directory
cd emsdk

# Download and install the latest SDK tools.
./emsdk install latest

# Make the "latest" SDK "active" for the current user. (writes .emscripten file)
./emsdk activate latest

# Activate PATH and other environment variables in the current terminal
source ./emsdk_env.sh
```
https://emscripten.org/docs/getting_started/downloads.html

- Compile SDL2:
``` 
$ embuilder.py build sdl2
```

- Compile the example project:
```
cargo +nightly build --target=wasm32-unknown-emscripten
```

References:
- https://puddleofcode.com/story/definitive-guide-to-rust-sdl2-and-emscriptem

