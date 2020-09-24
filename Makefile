all: web native

web:
	cargo build --release --target wasm32-unknown-emscripten

native:
	cargo build --release

serve:
	@echo "Available at http://localhost:8000/lvgl_example.html"
	@python3 -m http.server 8000
