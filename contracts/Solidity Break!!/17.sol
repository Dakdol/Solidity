// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//string을 input으로 받는 함수를 구현하세요. 
//이 함수는 true 혹은 false를 반환하는데 Bob이라는 이름이 들어왔을 때에만 true를 반환합니다. 

contract Q17{
    function getName(string memory _name) public returns(bool) {
        return keccak256(bytes(_name)) == keccak256(bytes("Bob"));
    }

}


// contract Q17{ 
//     function(string memory _name) public returns(bool){
//         if(_name == Bob) {
//             return true;
//         } else {
//             return false;
//         }

//     }


