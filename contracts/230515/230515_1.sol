// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;


contract REQUIRE {
    function Require1(uint _n) public pure returns(uint) {
        require(_n<10,"input should be lower than 10");
        return _n*3;
    }
    
    function getName(string memory _name) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_name));
    }

    function onlyAlice(string memory _name) public pure returns(bool){
        require(getName(_name)==0x9c0257114eb9399a2985f8e75dad7600c5d89fe3824ffa99ec1c3eb8bf3b0501);
        return true;
    }
}

contract CONTRUCTOR {
    uint a;
    uint b;

    constructor() {
        a = 7;
        b = 4;
    }

    function setA() public {
        a = 5;
    }

    function getA() public view returns(uint) {
        return a;
    }
    
    function getB() public view returns (uint) {
        return b;
    }
}

contract CONTRUCTOR2 {
    uint a;

    constructor(uint _a){
        a = _a;
    }

    function getA() public view returns(uint) {
        return a;
    }
}

contract CONTRUCTOR3 {
    struct Student {
        string name;
        uint number;
    }
    Student s;

    constructor(string memory _name, uint _number){
        s = Student(_name, _number);

    }
    
    function getStudent() public view returns(Student memory){
        return s;
    }

}

contract CONSTRUCTOR5 {
    /*
    1. 1번 지갑으로 배포, value는 10eth로
    2. 배포 후 지갑 잔고 확인
    3. 2번 지갑으로 deposit() 1eth // 3,4,5번 지갑으로 똑같이 실행
    4. 지갑 잔고 확인 후, 2번 지갑으로 trnasferTo 시도, _to의 지갑 주소는 6번 지갑 금액은 5eth 
    5. 1번 지갑으로 transferTo 시도, _to의 지갑 주소는 6번 지갑 금액은 5eth
    6. 2번 지갑으로 withdraw 함수 시도, 1번 지갑으로 withdraw 함수 시도
    */
    address payable owner;

    constructor() payable {
        payable(this).transfer(msg.value);
        owner = payable(msg.sender);
    }

    function getOwner() public view returns(address) {
        return owner;
    }

    function transferTo(address payable _to, uint _amount) public {
        require(msg.sender == owner, "only owner can transfer asset");
        _to.transfer(_amount);
    }

    receive() external payable{}

    function deposit() public payable returns(uint){
        return msg.value;
    }
    
    function withdraw() public {
        require(msg.sender == owner, "only owner can withdraw asset");
        owner.transfer(address(this).balance);
    }
}
contract MODIFIER {
    uint a;


    modifier lessThanFive(){
        require(a<5, "should be less than five ");
        _; // 함수가 실행되는 시점
    }
    function aPlus() public {
        a++;
    }

    function aMinus() public {
        a--;
    }

    function getA() public view returns(uint) {
        return a;
    }

    function doubleA() public lessThanFive {
        require(a<5);
        a= a*2;
    }

    function plusTen()public lessThanFive {
        require(a<5);
        a +=10;
    }



}
contract MODIFIER2 {
    /*
    실습가이드
    1. setAasTwo()로 a 값 2로 만들기
    2. setA() 실행 후 결과 확인, getA()로 A 값 확인
    3. setAasTwo()로 a 값 다시 2로 만들기
    4. setA2() 실행 후 결과 확인, getA()로 A 값 확인
    */
    uint a;

    modifier plusOneBefore() {
        a++;
        _;
    }

    modifier plusOneAfter() {
        _;
        a++;
    }

    function setA() public plusOneBefore returns(string memory)  {
        if(a>=3) {
            return "A";
        } else {
            return "B";
        }
    }

    function setA2() public plusOneAfter returns(string memory)  {
        if(a>=3) {
            return "A";
        } else {
            return "B";
        }
    }

    function getA() public view returns(uint) {
        return a;
    }

    function setAasTwo() public {
        a = 2;
    }
}


contract MODIFIER3 {
    /*
    실습가이드
    1. setAasTwo()로 a 값 2로 만들기
    2. setA() 실행 후, getB2() 실행해서 결과 보기
    */
    uint a;
    string b;
    string[] b2;

    modifier plusOneBefore() {
        _;
        a++;
        _;
    }

    function setA() public plusOneBefore  {
        if(a>=3) {
            b = "A";
            b2.push(b);
        } else {
            b = "B";
            b2.push(b);
        }
    }

    function getA() public view returns(uint) {
        return a;
    }

    function getB() public view returns(string memory) {
        return b;
    }

    function getB2() public view returns(string[] memory) {
        return b2;
    }

    function setAasTwo() public {
        a = 2;
    }
}

contract MODIFIER4 {
    struct Person {
        uint age;
        string name;
    }

    Person P;

    modifier overTwenty(uint _age, string memory _criminal) {
        require(_age >20, "Too young");
        require(keccak256(abi.encodePacked(_criminal)) != keccak256(abi.encodePacked("Bob")), "Bob is criminal. She can't buy it");
        _;
    }

    function buyCigar(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function buyAlcho(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function buyGu(uint _a, string memory _name) public pure overTwenty(_a, _name) returns(string memory) {
        return "Passed";
    }

    function setP(uint _age, string memory _name) public {
        P = Person(_age, _name);
    }

    function getP() public view returns(Person memory) {
        return P;
    }

    function buyCigar2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

    function buyAlcho2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

    function buyGu2() public overTwenty(P.age, P.name) view returns(string memory) {
        return "Passed";
    }

}

contract MODIFIER5 {
    uint mutex = 0;

    modifier m_check {
        mutex++;
        _;
        mutex--;
    }

    modifier shouldbeZero {
        require(mutex==0,"someone is using");
        _;
    }

    function inAndOut() public m_check returns(string memory){
        return "Done";
    }
    function occupy() shouldbeZero public {
        mutex++;
    }

    function vacancy() public {
        mutex--;
    }
}