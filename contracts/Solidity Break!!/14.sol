// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 학번, 이름, 듣는 수험 목록을 포함한 학생 구조체를 선언하고 학생들을 관리할 수 있는 array를 구현하세요.
// array에 학생을 넣는 함수도 구현하는데 학생들의 학번은 1번부터 순서대로 
// 2,3,4,5 자동 순차적으로 증가하는 기능도 같이 구현하세요.

contract Q14 {
    struct student {
        uint num;
        string name;
        string[] class;
    }

    student[] s;

    function addStudent(string memory _name, string[] memory _class) public {
        s.push(s.length+1, _name, _class);
        
           
        }
    }


// function pushStudent(string memory _name, string[] memory classes) public {
// 		students.push(students.length+1, _name, classes);
// 	}
// function pushABCs(uint _a,string memory _b,string[] memory _c) public {
//        ABCs.push(ABC( _a,_b,_c));
//    }    