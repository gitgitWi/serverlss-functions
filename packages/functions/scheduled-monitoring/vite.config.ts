import { resolve } from 'path';
import { defineConfig } from 'vite';

const config = defineConfig({
  build: {
    lib: {
      entry: resolve(__dirname, 'src/index.ts'),
      formats: ['es'],
      fileName() {
        return `main.js`;
      },
    },
  },
});

export default config;
