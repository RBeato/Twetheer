module.exports = {
  networks: {
    development: {
      host: "192.168.1.79",
      port: 7545,
      network_id: "*",
    },
  },

  compilers: {
    solc: {
      version: "0.7.4",
    }
  }
}