// 2_deploy_contract.js
const TestToken = artifacts.require("./BitsrentToken.sol");
module.exports = function(deployer) {
  deployer.deploy(TestToken);
};