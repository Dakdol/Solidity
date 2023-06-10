// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//은행에 입금을 하면 진짜 돈이 빠져나가는 케이스
//은행으로 개인이 바로 입금을 하면 안되고 중간 앱을 통해 보내야함.

contract Note {
    mapping(address =>uint) balance; //개인 잔액
    mapping(address =>mapping(address=>uint)) bankAccounts; //은행 잔고
    receive() external payable{}

    modifier balanceCheck(address _a, uint _amount){
        balance[_a] >= _amount;
        _;
    }

    //입금 - 해당 App에게 얼마 만큼의 돈을 입금하겠다. 
    function depositToApp(uint _amount) public payable {
        balance[msg.sender] += msg.value;
    }
    //입금 - 특정 은행에게 얼마 만큼의 돈을 입금하겠다.
    function depositToBank(address payable _bank, uint _amount) public {
        Bank targetBank = Bank(_bank);
        require(balance[msg.sender] >= _amount);
        payable(targetBank).transfer(_amount);
        balance[msg.sender] -= _amount;
        targetBank.Deposit(msg.sender, _amount);
    } 

    function _depositToBank(address payable _bank, address _to, uint _amount) public {
        Bank targetBank = Bank(_bank);
        require(balance[_to] >= _amount);
        payable(targetBank).transfer(_amount);
        balance[_to] -= _amount;
        targetBank.Deposit(_to, _amount);
    }
    //인출 - 해당 App에게 얼마 만큼의 돈을 입금하겠다.
    function withdrawFromApp(uint _amount) public payable {
        balance[msg.sender] += _amount;
        payable(msg.sender).transfer(_amount);
    }

    //인출 - 특정 은행에게 얼만큼의 금액을 출금하겠다.
    function withdrawFromBank(address payable _bank, uint _amount) public {
        Bank targetBank = Bank(_bank);
        targetBank.Withdraw(msg.sender, _amount);
        balance[msg.sender] += _amount;
    } 

    //송금 A가 B에게 돈을 보내는 것(App을 통해서)
    function transferTo(address _bAccount, uint _amount) public balanceCheck(msg.sender, _amount){

        balance[msg.sender] -= _amount;
        balance[_bAccount] += _amount;
    } 

    //은행송금 - A의 은행에서 B의 은행에게 돈을 보내는 것(은행끼리)
    function transferWire(address payable _aBank, address _bAccount, address payable _bBank, uint _amount) public {
        withdrawFromBank(_aBank, _amount);
        _depositToBank(_bBank, _bAccount, _amount);
    }
}  

contract Bank{
    mapping(address=>uint) public balance;
    receive() payable external{}

    //잔고 확인
    function balanceOf() public view returns (uint) {
        return balance[msg.sender];
    }


    // function balanceOf() public view returns (uint) {
    //     require(_account == msg.sender);
    // }

    //입금 - 특정 은행에게 얼마 만큼의 돈을 입금하겠다.
    function deposit(uint _amount) public payable {
        balance[msg.sender] += msg.value;
    } 

    // 값을 바꿔주는것에 있어서 안전장치를 한번 더 설치해주는 느낌.
    function _deposit(address _account, uint _amount)internal {
        balance[_account] += _amount;
    }

    function Deposit(address _account, uint _amount) public {
        require(_amount != 0, "Amount should not be zero.");
        _deposit(_account, _amount);
    }

    //인출 - 얼마만큼의 돈을 출금하겠다.
    function withraw(uint _amount) public {
        balance[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    } 
    
    function _withdraw(address _account, uint _amount) internal {
        balance[_account] -=_amount;
        payable(msg.sender).transfer(_amount);
    }

    function Withdraw(address _account, uint _amount) public {
        require(balance[_account] >= _amount);
        _withdraw(_account, _amount);
    }

    //송금 A가 B에게 돈을 보내는 것(동행)
    function transferTo(address _bAccount, uint _amount) public {
        balance[msg.sender] -= _amount;
        balance[_bAccount] += _amount;
    } 

    //타행송금 - A의 은행에서 B의 은행에게 돈을 보내는 것(타행)
    function transferWire(address _bAccount, address payable anotherBank, uint _amount) public {
        Bank B = Bank(anotherBank);
        balance[msg.sender] -= _amount;
        payable(B).transfer(_amount);
        //anotherBank에서의 B의 accountBalance를 높여주기
        B.Deposit(_bAccount, _amount);
    }

}

contract MSGSENDER {
    function A() public view  returns(address) {
        address a = msg.sender;
        return a;

    }
    function B() public view returns(address){
        address b = A();
        return b;
    }
}

contract MSGSENDER2 {
    MSGSENDER msgsender = new MSGSENDER();

    function C() public view returns (address) {
        address c = msgsender.A ();
        return c;
    }

    function D() public view returns (address) {
        address d = msgsender.B();
        return d;
    }
}

contract MSGSENDER3{
    address[] list;

    function push() public {
        list.push(msg.sender);
    }

    function push2() public {
        push();
    }

    function getlist() public view returns(address[] memory) {
        return list;
    }
}

