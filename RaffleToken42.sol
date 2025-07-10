// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2025 Daniel Expósito dani00exp@gmail.com
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

struct Raffle {
	address winner;
	uint256 firstIndex;
	uint256 totalTickets;
	mapping(address => uint256[2]) player; 
}

contract Raffle42 is ERC20 {
	uint256 supply = 1000000;
	Raffle[] raffle;


	constructor() ERC20("RAFFLE42", "RAF42") {
		_mint(msg.sender, supply);
	}
}
