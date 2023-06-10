// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/Strings.sol";


contract CONCAT {
    function concat1(string memory a, string memory b) public pure returns(string memory) {
        return string(abi.encodePacked(a,b));
    }

        function concat2(string memory a, string memory b) public pure returns(string memory) {
        return string.concat(a,b);
    }

    function concat2_2(string memory a, string memory b) public pure returns(string memory) {
        return string.concat(a,":", a, a, " ", b, ":", b, b); 
    }

    function concat3() public view returns(string memory) {
        string memory a = Strings.toString(block.number);
        return string.concat("The block number is",a);
    }

    uint public aa = block.number;
}

contract ABI {
    function Q28(string memory _ID, string memory _PW) public pure returns(bytes32, bytes32){
        return ((keccak256(bytes(_ID))), (keccak256(bytes(_PW))));
 
 
    }

    function Q69(uint _a, uint _b, uint _c) public pure returns(string memory) {
        require(_c >= 1 && _c <= 26);
        string memory aa = Strings.toString(_a);
        string memory bb = Strings.toString(_b);
        string memory alphabet = "abcdefghijklmnopqrstuvwxyz";
        bytes1 cc = bytes(alphabet)[_c-1];
        string memory ccc = string(abi.encodePacked(cc));
        return string.concat(aa, " and ", bb, " or ", ccc);
    }
}

/*3. 당신은 개발자겸 피아니스트입니다.
noteA[]라는 상태변수를 만들고 noteA를 설정하는 함수, 불러오는 함수 2개를 만드세요.
설정하는 함수는 숫자 계이름들을 넣으면 noteA에 영어 계이름이 들어가게 설정해주세요.
ex) 3,6,7,1,2 를 넣으면 noteA에는 E,A,B,C,D가 나와야힘.
1234567 - 도레미파솔라시 - CDEFGAB
 */

 contract Quiz {
     string[]  noteA;  

     function set(uint _n)public returns(string memory) {
         string memory n = Strings.toString(_n);

     }
 }