// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


/*여러분은 선생님입니다. 학생들의 정보를 관리하려고 합니다. 
학생의 정보는 이름, 번호, 점수, 학점 그리고 듣는 수업들이 포함되어야 합니다.

번호는 1번부터 시작하여 정보를 기입하는 순으로 순차적으로 증가합니다.

학점은 점수에 따라 자동으로 계산되어 기입하게 합니다. 90점 이상 A, 80점 이상 B, 70점 이상 C, 60점 이상 D, 나머지는 F 입니다.

필요한 기능들은 아래와 같습니다.

* 학생 추가 기능 - 특정 학생의 정보를 추가
* 학생 조회 기능(1) - 특정 학생의 번호를 입력하면 그 학생 전체 정보를 반환
* 학생 조회 기능(2) - 특정 학생의 이름을 입력하면 그 학생 전체 정보를 반환
* 학생 점수 조회 기능 - 특정 학생의 이름을 입력하면 그 학생의 점수를 반환
* 학생 전체 숫자 조회 기능 - 현재 등록된 학생들의 숫자를 반환
* 학생 전체 정보 조회 기능 - 현재 등록된 모든 학생들의 정보를 반환
* 학생들의 전체 평균 점수 계산 기능 - 학생들의 전체 평균 점수를 반환
* 선생 지도 자격 자가 평가 시스템 - 학생들의 평균 점수가 70점 이상이면 true, 아니면 false를 반환
* 보충반 조회 기능 - F 학점을 받은 학생들의 숫자와 그 전체 정보를 반환
-------------------------------------------------------------------------------
* S반 조회 기능 - 가장 점수가 높은 학생 4명을 S반으로 설정하는데, 이 학생들의 전체 정보를 반환하는 기능 (S반은 4명으로 한정)

기입할 학생들의 정보는 아래와 같습니다.

Alice, 1, 85
Bob,2, 75
Charlie,3,60
Dwayne, 4, 90
Ellen,5,65
Fitz,6,50
Garret,7,80
Hubert,8,90
Isabel,9,100
Jane,10,70 
*/
contract Quiz1 {
    struct Student{
        string name;
        uint number;
        uint score;
        string credit;
        string[] classes;
    }
    Student[] Stuedents;

    uint count=1;
    //학점은 점수에 따라 자동으로 계산되어 기입하게 합니다. 90점 이상 A, 80점 이상 B, 70점 이상 C, 60점 이상 D, 나머지는 F 입니다.
    function setCredit(uint _score) public pure returns (string memory){
        if(_score >=90){
            return "A";
        } else if(_score >=80){
            return "B";
        } else if(_score >=70){
            return "c";
        } else if(_score >=60){
            return "D";
        } else {
            return "F";
    }}
  // * 학생 추가 기능 - 특정 학생의 정보를 추가
  //번호는 1번부터 시작하여 정보를 기입하는 순으로 순차적으로 증가합니다.
    function pushStudent(string memory _name,uint _score,string[] memory _classes)public {
        Stuedents.push(Student(_name, /*count++*/Students.length+1,_score, setCredit(_score),_classes));
        name_Student[_name] = Student(_name,students.length+1, _score, setCredit(_score),_classes);
    } /*(새로 들어가는 학생이 전체 인원에서 +1이 되는것이라 상태변수 count를 1로 설정하지 않아도 전체 인원 Students.length+1,_score으로 구현 가능함.)*/

    //* 학생 전체 숫자 조회 기능 - 현재 등록된 학생들의 숫자를 반환
    function getStudentsNumber() public view returns(uint){
        return Students.length;
    }
   // * 학생 전체 정보 조회 기능 - 현재 등록된 모든 학생들의 정보를 반환
    function getAllStudents() public view returns(Student[] memory){
       return Students;
   }
//* 학생 조회 기능(1) - 특정 학생의 번호를 입력하면 그 학생 전체 정보를 반환
    function getStudent(uint _number)public view returns(Student memory) {
        return Students[_number-1];

    }
    mapping(string => Student) name_Student;
// * 학생 조회 기능(2) - 특정 학생의 이름을 입력하면 그 학생 전체 정보를 반환
    function getStudent2(string memory _name)public view returns(Student memory){
        return name_Student[_name];
    }

//* 학생 전체 숫자 조회 기능 - 현재 등록된 학생들의 숫자를 반환
    function getStudentScore(string memory _name) public view returns(uint) {
        return name_Student[_name].score;
    }
//* 학생들의 전체 평균 점수 계산 기능 - 학생들의 전체 평균 점수를 반환
    function getAverage() public view returns (uint) {
        uint totalScore;
        for(uint i=0;i<Stuendens.length; i++)
        totalScore = totalScore + students [i].score; // totalScore += Students[i].score
    }
    returns totalScore / students.length; //totalScore / getStudentSNumber () -> 똑같이 작동하는지 확인.
    }
//* 선생 지도 자격 자가 평가 시스템 - 학생들의 평균 점수가 70점 이상이면 true, 아니면 false를 반환
    function selfEva() public view returns (bool) {
        if(getAverage() >= 70) {
            returns true;
        } else {
            return false;
        }
    }
//* 보충반 조회 기능 - F 학점을 받은 학생들의 숫자와 그 전체 정보를 반환
   function Fclass() public view returns(student][] memory){
       student[] memory F_students;
       for(uint i=0; i<students.length; i++) {
           if(keccak256(bytes(students[i].credit)) == keccak256(bytes)
       }
   }
}


constant STRING_Compare {
    function keccak1(string memory s1)public pure returns(bytes32) {
        return keccak256(abi.encodePacked(s1));
        
    } 

    function keccak2(striong memory s1) public pure returns(bytes32){
        return keccak256(bytes(s1));
    }

    function compare1(string memory)s1, string memory s2) public pure returns (bool) {
        return keccak256(bytes(s1)) == keccak256(s2));
    }
}