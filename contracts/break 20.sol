// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//숫자만 들어가는 배열을 선언하고 숫자를 넣는 함수를 구현하세요. 
//15개의 숫자가 들어가면 3의 배수 위치에 있는 숫자들을 초기화 시키는(3번째, 6번째, 9번째 등등) 함수를 구현하세요. (for 문 응용 → 약간 까다로움)

contract test {
    //숫자만 들어가는 배열을 선언하고 숫자를 넣는 함수를 구현하세요. 
    uint[] num;

    
    function pushNum(uint _num) public {
        num.push(uint(_num));
    }
    //15개의 숫자가 들어가면 3의 배수 위치에 있는 숫자들을 초기화 시키는(3번째, 6번째, 9번째 등등) 함수를 구현하세요.
    //(for 문 응용 → 약간 까다로움)

    function resetMul3() public {
        for(uint i=3; i<=15; i+=3)
         delete num[i-1];

        }
    function getNum() public view returns(uint[]memory ){
        return num;
    }
}