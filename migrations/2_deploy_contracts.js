var people = artifacts.require("people");

module.exports = function(deployer) {
  deployer.deploy(people);
};