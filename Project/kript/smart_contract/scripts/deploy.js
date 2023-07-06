const hre = require("hardhat");

const main = async ()=> {
  const Transaction = await hre.ethers.getContractFactory("Transaction");
  const transaction = await Transaction.deploy();
  await transaction.deployed();
  console.log(
    `Transaction deployed to ${transaction.address}`
  );
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});