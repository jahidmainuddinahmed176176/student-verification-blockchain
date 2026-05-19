const hre = require("hardhat");

async function main() {
  const StudentVerify = await hre.ethers.getContractFactory("StudentVerify");
  const contract = await StudentVerify.deploy();
  await contract.waitForDeployment();
  console.log("Contract deployed to:", await contract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});