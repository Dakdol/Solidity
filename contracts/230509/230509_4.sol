// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


contract fixedArray {
    /*
    실습 가이드
    0. getALength(), getA(), getBLength(), getB() 결과 확인하기
    1. 1 -> pushA, 2 -> pushA, 3,4 진행
    2. getA(), getALength() 해보기
    3. 1 -> pushB2, 3-> pushB2, 5,7, 진행
    4. getB(), getBLength() 해보기
    */
    uint[] a;   // a[n]
    uint[4] b;

    function getALength() public view returns(uint) {
        return a.length;
    }

    function pushA(uint _n) public {
        a.push(_n);
    }

    function getA() public view returns(uint[] memory) {
        return a;
    }

    function getBlength() public view returns(uint) {
        return b.length;
    }

    function pushB(uint n, uint _n) public {
        b[n] = _n;
    }

    function getB() public view returns(uint[4] memory) {
        return b;
    }

    uint count;

    function pushB2(uint _n) public {
        b[count++] = _n;
    }

    function getCount() public view returns(uint) {
        return count;
    }
}