// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


        contract practice {

            uint a = 1;
            uint b = 3;
            uint c = 5;

            function getA() public view returns(uint){
                return a;
            }

            function getB() public view returns (uint){
                return b;
            }

            function setAasSeven() public{
                a=7;
            }
            
           /* function Add(uint _a,uint _b) public pure returns(uint){
                return _a+_b;

            }*/
    
       // 숫자 _aa와 _bb를 받아서 이 2개의 숫자를 더한 결과값을 반환하는 함수 Add를 구현하세요//
           

            function Add(uint _aa, uint _bb) public pure returns(uint) {
                return _aa + _bb;
            }


        //숫자 a와 b를 갖고와서 이 2개의 숫자를 더한 결과값을 반환하는 함수 Add2를 구현하세요//

            function Add2() public view returns(uint) {
                return a+b;
            }


            /*
    계산기를 만드세요
    2개의 input 값을 받아 더한 값을 반환하는 함수 Add, 곱한 값을 반환하는 함수 Mul, 
    뺀 값을 반환하는 Sub 그리고 몫과 나머지를 반환하는 함수 Div를 구현하세요*/

            




        }