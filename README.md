# LVGL Rust to WASM

Example of LVGL in Rust compiling to WASM. The same project can run natively and in the browser.

Access the live version [here](https://rafaelcaricio.github.io/lvgl-rs-wasm).

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

## Compiling

Compile the Web version:
```
make web
```

Compile the native version:
```
make native
```

## Running

To access the web version you need to serve the static files as web pages locally. We use `python3` for that. If you
have [Python 3](https://www.python.org/downloads/) installed, you can run:
```
make serve
```

Now you can access locally the project running at http://localhost:8000/lvgl_example.html .

For running natively, you can do:
```
cargo +nightly run --release
```


# References
- https://gregkatz.github.io/2017-05-20-rust-emscripten.html
- https://dev.to/kibebr/i-made-a-game-in-c-run-in-a-web-browser-and-so-can-you-4deb
- https://puddleofcode.com/story/definitive-guide-to-rust-sdl2-and-emscriptem

