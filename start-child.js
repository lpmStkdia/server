// Child bootstrap: register tsconfig-paths with a dist-based baseUrl
const path = require('path');

require('tsconfig-paths').register({
  baseUrl: path.join(__dirname, 'dist'),
  paths: { '@/*': ['*'] },
});

// Load compiled server
require(path.join(__dirname, 'dist', 'server.js'));
