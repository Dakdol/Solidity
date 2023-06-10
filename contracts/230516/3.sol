// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


contract DAD {
    uint a;

    uint public wallet=100; // 공개한 지갑 잔액
    uint internal crypto=1000; // 메모장에 private key가 있는 크립토 잔액
    uint private emergency=10000; // 진짜 비상금

    function password() private pure returns(uint) {
        return 1234;
    }

    function changeWallet(uint _n) public {
        wallet = _n;
    }

}

contract MOM {
    DAD husband = new DAD();
    DAD realHusband;

    constructor(address _a) {
        realHusband = DAD(_a);
    }

    function getWallet() public view returns(uint) {
        return husband.wallet(); // 코드만 가져온다
    }

    function getRealWallet() public view returns(uint) {
        return realHusband.wallet(); //상속한 함수의 값을 그대로 가져온다
    }

    function changeRealWallet() public  () {
        realHuseband.changeWallet(_a);
    }
}

contract CHILD is DAD {

    DAD daddy = new DAD();
    DAD daddy2 = new DAD();

}