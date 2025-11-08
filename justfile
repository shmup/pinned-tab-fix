default: zip

lint:
  bunx @biomejs/biome lint --write background-script.js options/options.js

lint-unsafe:
  bunx @biomejs/biome lint --write --unsafe background-script.js options/options.js

zip:
  mkdir -p build
  zip -FS build/pinned-tab-fix.zip manifest.json background-script.js icon.svg -r _locales/ options/
