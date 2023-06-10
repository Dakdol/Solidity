// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//배열 A를 선언하고 해당 배열에 0부터 n까지 자동으로 넣는 함수를 구현하세요. 

contract Q15 {
    uint [] A;

    function autoNum(uint _num) public returns(uint[] memory){
        for(uint i = 0; i <= _num; i++) {
          A.push(i);
    }
    return A;

    }



}
