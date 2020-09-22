all: web native

web:
	cargo +nightly build --release --target wasm32-unknown-emscripten

native:
	cargo +nightly build --release

serve:
	@echo "Available at http://localhost:8000/lvgl_example.html"
	@python3 -m http.server 8000
