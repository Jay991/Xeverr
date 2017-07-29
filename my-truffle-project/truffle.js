module.exports = {
  networks: {
    development: {
      host: process.env.IP,
      port: process.env.PORT,
      network_id: "*" // Match any network id
    }
  }
};
