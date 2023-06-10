// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

    /*
    계산기를 만드세요
    2개의 input 값을 받아 더한 값을 반환하는 함수 Add, 곱한 값을 반환하는 함수 Mul, 
    뺀 값을 반환하는 Sub 그리고 몫과 나머지를 반환하는 함수 Div를 구현하세요*/

        contract practice_2 {
 
            function Add(uint a, uint b) public pure returns(uint){
                return a + b;
            }

            function Sub(uint a, uint b) public  pure returns (uint){
                return a - b;
            }

            function Mul(uint a, uint b) public  pure returns(uint) {
                return a * b;
            }
            
            function Div(uint a, uint b) public  pure returns(uint) {
                return  a/b ;
            }

        }