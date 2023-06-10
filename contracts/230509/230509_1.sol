// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

    
contract MAPPING {
    mapping(uint => uint) a; // mapping(자료형 => 자료형) 이름
    mapping(string => uint) b; // key-value 쌍이 각각 string형과 uint형
    mapping(bytes=> uint) c; // bytes를 넣으면 uint가 나옴

    struct Student {
        uint number;
        string name;
        string[] classes;
    }

    mapping(string => Student) Teacher_Student; 

    function setStudent(string memory _Teacher,uint _number, string memory _name, string[] memory _classes) public{
        Teacher_Student[_Teacher] = Student(_number,_name,_classes);

    }









//     function setB(string memory _key, uint _value) public {
//         b[_key] = _value; //mapping이름[_key값] = _value값
//     }

//     function getB(string memory _key) public view returns(uint) {
//         return b[_key]; //mapping이름[_key값] -> value값을 돌려줌
//     }

//     function setC(bytes memory _key, uint _value) public {
//         c[_key] = _value;
//     }

//     function getC(bytes memory _key) public view returns(uint) {
//         return c[_key];
//     }
// }





// // //ABC라는 구조체 안에는 숫자형 a, 문자형 b, 문자형 array c가 들어있다.
// //      contract Struct{
// //          struct ABC{
// //              uint a;
// //              string b;
// //              string[] c;
// //          }
// // //ABC가 들어가는 array ABCs를 구현하고 ABCs에 ABC를 넣는 함수,
// //      ABC[] ABCs;

// //     function pushABC(uint _a,string memory _b string[] memory c)public(){
// //         ABCs.push(ABC(_a,_b,_c));
// //     }
// // //특정 ABC를 반환하는 함수
// //     function getABC(uint _n) public view return (ABC memory) {
// //         return ABCs(_n-a);
// //     }
// // //ABCs 전체를 반환하는 함수
// //     function getABC2() public view return(ABC memory) {
// //         return ABC;
// //     }
// //  //특정 ABC의 c array를 반환받는 함수를 각각 구현하시오.
// //    function getABC_Array(uint _n) public view returns(string[] memory){
// //        return ABCs[_n-1].c; //array의 특정 array의 c
// //    }
// //      }




















//          //이름 a, 번호 b, bytes2 c를 담은 구조체 D
//     //      struct D {
//     //          string a;
//     //          uint b;
//     //          bytes2 c;
//     //      }
//     // //D형 변수 ddd를 선언하시오.
//     //      D ddd;


//     // //ddd에 값을 부여하는 함수를 구현하시오.
 
//     // function setDdd(string memory _a, uint _b, bytes2 _c) public {
//     //     ddd = D(_a, _b, _c);
//     // }
//     // //D가 들어가는 array D_list를 선언하시오.

//     // D [] D_list;

//     // //D_list 전체를 반환하는 함수, D_list 안에서 n번째 데이터를 반환하는 함수를 각각 구현하시오.

//     // function getDlist() public view returns(D[]memory) {
//     //     return D_list;
//     // }

//     // function getN (uint _n) public view returns(D memory) {
//     //     return D_list[_n-1];
//     // }



     











// // //이름, 생일, 번호를 담은 구조체 Student를 선언하고 Student들이 들어갈 수 있는 array students를 선언하시오.

// // contract Struct{
// //     struct student{
// //         string name;
// //         uint birth;
// //         uint num;

// //     }
// //     student [] students;
// //     //students에 Student를 넣을 수 있는 함수, n번째 학생을 반환해주는 함수, 

// //     function pushStudent(string memory _name, uint _birth, uint _num) public {
// //         students.push(student(_name,_birth,_num));
// //     }
// //     //n번째 학생의 이름을 반환해주는 함수를 구현하세요.
// //     function getNum(uint) public view returns(string memory) {
// //         returns students[_n-1].name;
// //     }
   

   contract MAPPING {
    mapping(uint => uint) a; // mapping(자료형 => 자료형) 이름
    mapping(string => uint) b; // key-value 쌍이 각각 string형과 uint형
    mapping(bytes=> uint) c; // bytes를 넣으면 uint가 나옴

    function setB(string memory _key, uint _value) public {
        b[_key] = _value; //mapping이름[_key값] = _value값
    }

    function getB(string memory _key) public view returns(uint) {
        return b[_key]; //mapping이름[_key값] -> value값을 돌려줌
    }

    function setC(bytes memory _key, uint _value) public {
        c[_key] = _value;
    }

    function getC(bytes memory _key) public view returns(uint) {
        return c[_key];
    }

    struct Student {
        uint number;
        string name;
        string[] classes;
    }

    mapping(string => Student) Teacher_Student;

    function setTeacher_Student(string memory _Teacher, uint _number, string memory _name, string[] memory _classes) public {
        Teacher_Student[_Teacher] = Student(_number, _name, _classes);
    }

    function getTeacher_Student(string memory _Teacher) public view returns(Student memory) {
        return Teacher_Student[_Teacher];
    }
}