//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Struct {
    struct Student {
        string name;
        uint number;
    } 
    /* 구조체 선언 
    struct 구조체명 {
        .../
        .../
        ...
    }
    */

    Student s; // Student형 변수 s

    function setStudent(string memory _name, uint _number) public {
        s = Student(_name, _number);
    }

    function getStudent() public view returns(Student memory) {
        return s;
    }

    function pushStudent(string memory _name, string memory _gender, uint)
}



 /*이름, 성별, 번호, 생년월일을 가진 학생 구조체를 만들고 학생형 s라는 변수를 선언하시오. 

그 후에, s에 값을 넣는 함수와 s의 값을 반환하는 함수를 만드세요.

struct Student 
    string name;
    string gender;
    uint num;
    uint birth;

    Student s;

    function setStudent(string memory _name, string memory _gender,uint _number, uint _birth) public {
        s = Student(_name, _gender, _ number, _birth);
    }
    function getStudent() public view returns(Student memory) {
        return s;
    }*/




contract Errors {
    uint a;

    function add(uint _a, uint _b) public pure returns(uint) {
        return _a+_b;
    }

    /*
    function add(uint _a, uint _b) public returns(uint) {
        a = a + _a + _b;
        return a;
    }

    function add(uint _a, uint _b) public view returns(uint) {
        return a+_a+_b;
    }

    function add(uint _a, uint _c) public pure returns(uint) {
        return _a+_c;
    }

    function add(uint _a, uint _b) public pure returns(uint, uint) {
        return (_a+_a, _a+_b);
    }
    */

    function add(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a+_b+_c;
    }

    function add2() public pure returns(uint) {
        uint c = 5;
        uint d = 7;
        return c+d;
    }

}