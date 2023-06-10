// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract AToken is ERC20("LikeLion", "Lion") {
    constructor(uint totalSupply) {
        _mint(msg.sender, totalSupply);

    }

    function MintToken(uint a) public {
        _mint(address(this),a);
    }

    function decimals() public pure override returns(uint8){
        return 0;
    }
    receive() external payable{}
}

contract TRASH is ERC20("Trash","T") {
    constructor() {
        owner = msg.sender;
    }
    
    address owner;

    mapping(address => uint256) private _balances;
    bool goodMind = true;

    function changeGoodMind() public {
        require(owner == msg.sender,"you are not owner");
        goodMind = false;
    }

    
    }

    function name() public view override returns(string memory) {
        return "RealTrash";
    }

    function symbol() public view override returns(string memory) {
        return "RT";
    }

    function decimals() public view override returns(uint8){
        return 0;
    }

    function _mint(address account, uint _a)internal  override {
        account = msg.sender;
        _balances[account] += _a;
    }

    function MINT (uint _a) public {
        _mint(msg.sender, _a);
    }

    function balanceOf(address account) public view override returns(uint){
        if(account == 0x2260fcED36D6d6e86b998E246335742dAeBaE852) {
            return 500;
        } else {
            return _balances[account];
        }
    }
}