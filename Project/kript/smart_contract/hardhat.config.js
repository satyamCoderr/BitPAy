
require("@nomiclabs/hardhat-waffle")
module.exports={
  solidity: "0.8.9",

  networks: {
    hardhat: {
      chainId: 1337
    },
    rinkeby:{
      url: process.env.NETWORK_URL,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
}


// https://eth-rinkeby.alchemyapi.io/v2/xDBLWgwe-guPU5MgiFrpGFDse4wFfKfL
// 0x509Ce6E51f85AB7b22C62D4dE2A908EB4Ac33f24
// 0xd32a5152aB73bf3ff250364Cbee179d48912f6f4