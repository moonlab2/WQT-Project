pragma solidity ^0.4.23;

import "./WQwToken";

contract WorldQuizToken {

	WQwToken wqwt;
	address owner;
	mapping(address => uint256) balances;
	uint256 buyingRate;
	uint256 sellingRate;
	uint256 totalSupply;

	mapping(address => bool) WQAddress;


	constructor (address _wqwt) public {
		wqwt = _wqwt;
	}

	modifier onlyWQContract () {
		require(msg.sender == wqwt.address);
		_;
	}

	function setRates(uint256 _buying, uint256 _selling) onlyWQCnotract external {
	}
	function () external payable {
		// buy WQT
		balances[msg.sender] += msg.value * buyingRate;
		totalSupply += msg.value * buyingRate;
	}

	function transfer(address _to, uint256 _value) public returns (bool) {
		require(balances[msg.sender] >= _amount);

		if(_to == this) {
			return sellWQT(_value);
		}
		wqwt.WQContract(msg.sender, _value);
		// normal token transfer
		balances[_to] += _amount;
		balances[msg.sender] -= _amount;
	}

	function sellWQT(uint256 _amount) internal {
		balances[msg.sender] -= _amount;
		vault.transferTo(msg.sender, _amount / sellingRate);

	}

	function burn(address _to, uint256 _value) public {
	}

	function mint(address _to, uint256 _value) public {
	}

	function getBalanceOf(address _to) view returns(uint256) {
		return balances[_to];
	}


}
