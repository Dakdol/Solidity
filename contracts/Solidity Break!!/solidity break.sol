// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


contract test{
//1. 더하기, 빼기, 곱하기, 나누기 그리고 제곱을 반환받는 계산기를 만드세요
uint a;
uint b;
function Add()public view returns (uint){
    return a+b;
}
function Sub()public view returns (uint){
    return a-b;
}
function Mul()public view returns (uint){
    return a*b;
}
function Div()public view returns (uint){
    return a/b;
}
function MM() public view returns(uint) {
    return a**2;
    }   
/*2. 2개의 Input값을 가지고 1개의 output값을 가지는 4개의 함수를 만드시오.
   각각의 함수는 더하기, 빼기, 곱하기, 나누기(몫)를 실행합니다.*/
function Add2(uint _a, uint _b) public pure returns(uint) {
    return _a + _b;
    }
function Sub2(uint _a, uint _b) public pure returns(uint) {
    return _a - _b;
    }
function Mul2(uint _a, uint _b) public pure returns(uint) {
    return _a * _b;
    }    
function Div2(uint _a, uint _b) public pure returns(uint) {
    return _a / _b;
    }    
/*3. 1개의 Input값을 가지고 1개의 output값을 가지는 2개의 함수를 만드시오. 
     각각의 함수는 제곱, 세제곱을 반환합니다.*/







//7. 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 5까지 자동으로 채우는 
// 함수와 array안의 모든 숫자를 더한 값을 반환하는 함수를 각각 구현하세요.(for 문)
    uint[] numbers;
    

    function auto(uint _n) public {
        numbers.push(_n);
    }
}