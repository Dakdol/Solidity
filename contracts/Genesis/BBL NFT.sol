// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract delivery is ERC1155,Ownable {
    
    uint public deliveryNFT;
   
    mapping(uint256 => uint256) private _mintCounts;
    

    constructor () ERC1155 ("{id}.json") {
      
    }
      
       function mint(uint256 tokenId, uint256 amount) external payable {
        require(msg.value == 1 ether, "Insufficient payment");
          _mint(msg.sender, tokenId, amount, "");
    }
        function getMintCount(uint256 tokenId) external view returns (uint256) {
        return _mintCounts[tokenId];
    }
}


contract store is ERC1155 {

    uint public storeNFT;

    constructor () ERC1155 ("{id}.json") {
        _mint(msg.sender, storeNFT, 1, "");
    }


}
