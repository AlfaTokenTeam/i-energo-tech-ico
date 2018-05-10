pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract IEnergoTech is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function IEnergoTech(address _owner)  UpgradeableToken(_owner) {
    name = "IEnergoTech";
    symbol = "IET";
    totalSupply = 1000000000000000000000000;
    decimals = 16;

    balances[_owner] = totalSupply;
  }
}