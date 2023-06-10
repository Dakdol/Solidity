// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract A {

    uint public a;
    uint public b;
    uint public c;

    function setABC(uint _a, uint _b, uint _c) public {
        (a,b,c) = (_a, _b, _c); 
    }

    function ABC() public returns(string memory) {
        require(a ==0 && b != 1 || c ==0);
        /*
        a=0 b=2 c=2 <- 앞의 조건 2개 만족, 뒤의 조건 불만족 -> o
        a=0 b=1 c=0 <- 앞의 조건 1개 만족, 뒤의 조건 만족 -> o
        a=0 b=1 c=1 <- 앞의 조건 1개 만족, 뒤의 조건 불만족 -> x
        a=1 b=1 c=0 <- 앞의 조건 0개 만족, 뒤의 조건 만족 -> o
        a=1 b=1 c=1 <- 모두 불만족 -> x
        */
        return "aaa";
    }
}

contract B {
    function deposit() public payable {}

    uint eth = 1 ether;

    function transferTo(address payable _to, uint amount) public {
        _to.transfer()
    }
}