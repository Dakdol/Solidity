// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//숫자들만 들어갈 수 있는 array를 선언하고 해당 array에 숫자를 넣는 함수도 구현하세요. 
//또 array안의 모든 숫자의 합을 더하는 함수를 구현하세요.

contract Q16{
    uint [] A;

    function pushNum(uint _num) public {
       A.push(_num);  
    }
    
    function sum() public view returns(uint)  {
        uint _sum;
        for(uint i=0; i < A.length; i++) {   //<=을 넣었었는데 배열의 길이는 -1을 해줘야하기때문에 같을때까지하면 오류 발생.
           _sum += A[i];
        }
        return _sum;
    }
}