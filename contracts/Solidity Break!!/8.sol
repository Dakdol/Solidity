// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 아래의 함수를 만드세요
// 1~10을 입력하면 “A” 반환받습니다.

// 11~20을 입력하면 “B” 반환받습니다.

// 21~30을 입력하면 “C” 반환받습니다.

contract Q8 {
    function ABC (uint n) public returns(string memory){
        if ( 1 <= n && n <= 10) {
            return "A";
        } else if (11 <= n && n < 20) {
            return "B";
        } else if (21 <= n && n < 30) {
            return "C";
        } else {
            return "X";
        }

}
}
