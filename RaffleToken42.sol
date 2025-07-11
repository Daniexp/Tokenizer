// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2025 Daniel Expósito dani00exp@gmail.com
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

struct Raffle {
	address winner;
	address[] tickets; 
}

contract Raffle42 is ERC20 {
	Raffle[] raffle;
    address  internal owner;


	constructor() ERC20("RAFFLE42", "RAF42") {
		_mint(msg.sender, 1000000);
        owner = msg.sender;
    }
    function getActualRaffle() internal view returns(uint256) {
        require(raffle.length > 0);
        return raffle.length - 1;
    }
    // BuyTickets - require to have x amount of tokens and pay them as tickets
    function buytickets(uint256 _amount) public {
        require(_amount > 0, "Insuficient funds");
        require(raffle.length > 0, "Actually no raffle is started");
        uint256 raffleIndex = getActualRaffle();
        for (uint16 i = 0; i < _amount; i++) 
        {
            raffle[raffleIndex].tickets.push(msg.sender);
        }
    }
    // Create Raffle
    // Set raffle winner
    // Finish Raffle - set winner, close raffle and create new raffle
    function finishRaffle() public returns(address) {
        require(raffle.length > 0, "Actually no raffle is started");
        require(msg.sender == owner, "Only the owner can finish a raffle");
        uint raffleIndex = getActualRaffle();
        require(raffle[raffleIndex].tickets.length > 0, "The raffle doesn't have participants");
        uint256 winner =  uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, raffleIndex))) % (raffle[raffleIndex].tickets.length);
        raffle[raffleIndex].winner = raffle[raffleIndex].tickets[winner];
        return raffle[raffleIndex].winner;
    }
}
