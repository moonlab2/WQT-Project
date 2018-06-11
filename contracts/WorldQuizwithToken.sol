pragma solidity ^0.4.23;

contract WQwToken {

	mapping (address => bool) isWQContract;
	address owner;

	constructor (address _owner) public {
		owner = _owner;
	}

	function WQContract(address _to, uint256 _value) external {
		if(!WQContractAddress[_to])
			return;

		// check if the address is answer contract
	}

}
