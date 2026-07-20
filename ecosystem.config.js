module.exports = {
  apps: [
    {
      name: 'letankiserver',
      script: 'start.js',
      cwd: __dirname,
      interpreter: 'node',
      exec_mode: 'fork',
      autorestart: true,
      restart_delay: 5000,
      watch: false,
      env: {
        NODE_ENV: 'production'
      }
    }
  ]
};
