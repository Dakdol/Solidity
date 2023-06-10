// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Mapping {

    mapping(uint => uint) setNum;
    mapping(string => uint) strToNum;

    struct Wallet{
        string name;
        uint num;
        address account;
        

    }
    //이름을 넣어서 지갑을 받게
    mapping(string => Wallet) strToWallet;
    
    Wallet[] wallets;
    //wallets에 새로운 wallet을 추가하는 함수
    function setWallet(string memory _name, uint _num, address _account) public {
        wallets.push(Wallet(_name,_num,_account));

    }
    //특정 번호의 wallet을 받아오기
    function getWallet(uint _n) public view returns(Wallet memory){
        return wallets[_n-1];  }

    function getWallet2(uint _n) public view returns(address){
        return wallets[_n-1].account;
    }
    //모든 월렛들을 반환시켜주는 함수

    function getAllwallet() public view returns(Wallet[] memory){
        return wallets;
    }



}

contract Array {
    //숫자형만 들어가는 10자리로 고정된 배열
    //무한정으로 들어가는 배열

    uint[10] ten;
    uint[] infinity;

    //ten에 숫자를 넣는 함수, intinity에 숫자를 넣는 함수

    function setTen(uint _num, uint _setNum)public {
        ten[_num-1] = _setNum;
    }
    uint count;
    function AutoSetTen(uint _num) public {
        ten[count++] = _num;
    }
    function setInfinty(uint _num) public {
        infinity.push(_num);
    }

    //infinity에 원하는 숫자를 넣을 수 있는 함수
    function setInfinty2(uint _index,uint _num) public {
        infinity[_index-1]= _num;
    }
    
    //ten 배열에 있는 숫자를 모두 더해주는 함수
    function addTen()public view returns(uint) {
        uint outcome;
        for (uint i=0; i<ten.length; i++){
            outcome = outcome + ten[i];
        }
        return outcome;
    }

}