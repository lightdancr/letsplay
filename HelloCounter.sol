// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HelloToken is ERC20 {
uint 256 public token price = 100000000000000;  // 0.0001 Ether in Wei

constructor () ERC20("HelloToken", "HELLO") {
_mint (msg.sender, 1000000 * 10** decimals())); // mint initial supply
}

function sayHello() pubic payable {
  require(msg.value >= tokenPrice, "Insufficient Ether sent");
  _mint(msg.sender, 1 * 10**decimals ()); // Mint 1 token
}

function withdrawFunds() public {
  uint 256 balance = address(this).balance;
  (bool success, ) = msg.sender.call{value: balance} ("");
  require(success, "Withdrawl failed");
}
}

contract HelloCounter {
  unit 256 public count;

constructor () {
  count = 0;
}

function sayHello() public {
  count++;
  }
  }
  
