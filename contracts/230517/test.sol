// 숫자를 넣었을 때 그 숫자의 자릿수와 각 자릿수의 숫자를 나열한 결과를 반환하세요.
// 예) 2 -> 1,   2 // 45 -> 2,   4,5 // 539 -> 3,   5,3,9 // 28712 -> 5,   2,8,7,1,2
// --------------------------------------------------------------------------------------------
// 문자열을 넣었을 때 그 문자열의 자릿수와 문자열을 한 글자씩 분리한 결과를 반환하세요.
// 예) abde -> 4,   a,b,d,e // fkeadf -> 6,   f,k,e,a,d,f

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract test {
// 숫자를 넣었을 때 그 숫자의 자릿수와 각 자릿수의 숫자를 나열한 결과를 반환하세요.
  function  placeValue(uint _num) public pure returns(string memory) {
    if(_num <=9) {
        return "1";
    } else if(_num<=99) {
        return "2";
    } else if(_num<=999) {
        return "3";
    } else if(_num<=9999) {
        return "4";
    } else if(_num<=99999) {
        return "5";
    } else  {
        return "It's out of range.";
    } 
  }
}