var DefaultBuilder = require("truffle-default-builder");

module.exports = {
  build: new DefaultBuilder({
    "index.html": "index.html",
    "app.js": [
      "vendor/angular/angular.js",
      "vendor/angular-route/angular-route.js",
      "javascript/app.js",
      "javascript/controllers/main.js",
      "javascript/controllers/sendfunds.js",
      "javascript/controllers/showevents.js",
      "javascript/controllers/permissions.js"
    ],
    "app.css": [
      "stylesheets/app.css"
    ],
    "images/": "images/",
    "views/": "views/"
  }),

  networks: {
    development: {
      host: process.env.IP,
      port: process.env.PORT,
      network_id: "*" // match any network
    },
    live: {
      host: process.env.IP,
      port: process.env.PORT,
      network_id: "*" // match any network
    }
  }
};
