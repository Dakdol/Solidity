// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract A {
    function Add(uint numa, uint numb, uint numc, uint numd)public pure returns(uint){
        return numa+numb+numc+numd;
    }

    uint public a;
    function setNum(uint _a) public {
        a = _a;
    }
}

contract B {
    A public AB;

    constructor(address Aaddress){
        AB = A(Aaddress);
    }

    function newa(uint _n)public {
        AB.a(_n);
    }
}