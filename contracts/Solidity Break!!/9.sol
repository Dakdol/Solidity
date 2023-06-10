// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;
// 문자형을 입력하면 bytes 형으로 변환하여 반환하는 함수를 구현하세요.

contract Q9 {
   
function stringToBytes(string memory s) public pure returns(bytes memory) {
		return bytes(s);
	}
}