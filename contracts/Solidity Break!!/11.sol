// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//uint 형이 들어가는 array를 선언하고, 짝수만 들어갈 수 있게 걸러주는 함수를 구현하세요.
contract Q11{
    uint[] num;

    function evenNumber(uint n) public returns(string memory) {
        if(n%2==0) {
            num.push(n);
        }
        else {
           return  "not even number!";
        }
    }

    function getArrey()public view returns(uint[]memory ) {
        return num;
    }
}


// 0이 만들어지면 짝수 ,  1이 만들어지면 홀수...