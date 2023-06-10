// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract MAPPING {
    struct Student{
        uint number;
        string name;
        string[] classes;
    }

    //어떤 선생님이 담당 학생이 가지고 있음
    mapping(string => Student) Teacher_Student;
    mapping(string => Student[]) Teacher_Class;

    function setTeacher_Student(string memory _Teacher,uint number,string memory name,string[] memory classes) public {
        Teacher_Student[_Teacher] = Student(number,name,classes);
    }
    
    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }

    function setTeacher_Class(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Class[_Teacher].push(Student(_number, _name, _classes));
    }

    function getTeacher_Class(string memory _Teacher) public view returns(Student[] memory) {
        return Teacher_Class[_Teacher];
    }

}