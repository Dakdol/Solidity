// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 숫자만 들어가는 array numbers를 선언하고 숫자를 넣고(push), 
// 빼고(pop), 특정 n번째 요소의 값을 볼 수 있는(get)함수를 구현하세요.

contract Q10 {
    uint[] numbers;

    function push(uint n) public  {
        numbers.push(n);
    }
    function pop() public {
        numbers.pop();
    }
    function get(uint n) public view returns (uint){
        return numbers[n-1];
    }
}