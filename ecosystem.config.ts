module.exports = {
  apps: [
    {
      name: "API",
      script: "server.js",
      instances: 2,
      watch: true,
      autostart: true,
      max_memory_restart: "1G",
      env: { NODE_ENV: "development" },
      env_production: { NODE_ENV: "development" },
    },
  ],
};
