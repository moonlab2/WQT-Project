var WQVault = artifacts.require("./WQVault.sol");
var Quiz = artifacts.require("./Quiz.sol");
var Answer = artifacts.require("./Answer.sol");


module.exports = function(deployer) {
	//const ANS = artifacts.require("Answer");

	deployer.deploy(WQVault, web3.eth.accounts[0]);
	deployer.deploy(Quiz, web3.eth.accounts[0]);
	deployer.deploy(Answer, Quiz.address, WQVault.address);
	deployer.deploy(Answer, Quiz.address, WQVault.address);
	deployer.deploy(Answer, Quiz.address, WQVault.address);
	deployer.deploy(Answer, Quiz.address, WQVault.address);
};
