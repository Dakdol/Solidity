// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 현재 contract의 주소를 반환하는 기능
// 상태변수 a (public 하게) 
// a를 변화시키는 함수
// 3개의 숫자를 input으로 받고 ouput으로 3개의 숫자를 곱한 값을 반환하는 함수
contract A {
    uint public a;
    function mul(uint _a, uint _b, uint _c) public pure returns(uint) {
        return (_a* _b* _c);
    }

    function change(uint _n) public returns (uint) {
        a = _n;
    }

    
}