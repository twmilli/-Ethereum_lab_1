var Migrations = artifacts.require("./Migrations.sol");
var Greeter = artifacts.require("./Greeter.sol");
var Fib = artifacts.require("./Fib.sol");
var Concatenate = artifacts.require("./Concatenate.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Greeter);
  deployer.deploy(Fib);
  deployer.deploy(Concatenate);
};
