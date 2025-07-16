// SPDX-License-Identifier: MIT
// SPDX-FileCopyrightText: 2025 Daniel Expósito dani00exp@gmail.com
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

struct Raffle {
	address winner;
    uint256 maxTickets;
	address[] tickets;
    uint256 daysDuration;
    string name;
    uint256 deployTimestamp;
    uint256 endTimestamp;
    // Prize will be a nft that ideally will represent the ownership of some item in the real world or a digital asset
}
struct Person {
    string name;
    address wallet;
}

contract Raffle42 is ERC20 {
    mapping (uint256 => Raffle) public raffles;
    address  internal owner;


	constructor() ERC20("RAFFLE42", "RAF42") {
		owner = msg.sender;
        _mint(msg.sender, 1000000);
    }

    // Create Raffle
    // Returns raffleId
    function createRaffle(string memory _name, uint256 _maxTickets, uint256 _daysDuration) public returns (uint256) {
        require(msg.sender == owner, "Only the owner can create a raffle");
        Raffle memory newRaffle;
        newRaffle.name = _name;
        newRaffle.maxTickets = _maxTickets;
        newRaffle.daysDuration = _daysDuration;
        newRaffle.deployTimestamp = block.timestamp;
        uint256 newRaffleId = uint256(keccak256(abi.encodePacked(_name, block.timestamp)));
        raffles[newRaffleId] = newRaffle;
        return newRaffleId;
    }

    // BuyTickets - require to have x amount of tokens and pay them as tickets
    function buytickets(uint256 _amount, uint256 _raffleId) public {
        require(_amount > 0, "You can't buy 0 tickets");
        require(msg.sender != owner, "The owner can't buy tickets");
        for (uint256 i = 0; i < _amount; i++)
        {
            raffles[_raffleId].tickets.push(msg.sender);
        }
    }
    // Create Raffle
    // Set raffle winner
    // Finish Raffle - set winner, close raffle and create new raffle
    function finishRaffle(uint256 _raffleId) public returns(address) {
        require(msg.sender == owner, "Only the owner can finish a raffle");
        require(raffles[_raffleId].tickets.length > 0, "The raffle doesn't have participants");
        uint256 winner =  uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, _raffleId))) % (raffles[_raffleId].tickets.length);
        raffles[_raffleId].winner = raffles[_raffleId].tickets[winner];
        return raffles[_raffleId].winner;
    }
}
