pass:
	fusesoc --cores-root . run --setup --build --no-export --target synth ::top

fail:
	fusesoc --cores-root . run --setup --build --target synth ::top

fail2:
	fusesoc --cores-root . run --setup --build --flag include_xci --target synth ::top

clean:
	git restore .
	git clean -fd
	rm -rf build