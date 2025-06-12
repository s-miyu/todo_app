import { defineConfig } from 'vite';
import RubyPlugin from 'vite-plugin-ruby';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [
    react(),
    RubyPlugin()
  ],
  server: {
    host: '0.0.0.0',
    port: 3036
  }
});
