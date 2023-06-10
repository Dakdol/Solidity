// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract VISIBILITY {

    function publicF() public pure returns(string memory) {
        return "public";
    }

    function privateF() private pure returns(string memory) {
        return "private";
    }

     function testprivateF() public pure returns(string memory) {
        privateF();
    }

    function internalF() internal pure returns(string memory) {
        return "internal";
    }

    function externalF() external pure returns(string memory) {
        return "external";
    }
}

contract Parent {
    function add(uint a,uint b)public pure returns (uint) {
        return a+b;
    }
}

contract Child is Parent {
    function mul(uint a, uint b)public pure returns(uint) {
        return a*b;
    }
}



contract DAD {
    function who() virtual public pure returns(string memory) {
        return "dad from DAD";
    }

    function name() internal pure returns(string memory) {
        return "David";
    }

    function password() private pure returns(uint) {
        return 1234;
    }
}

contract Outsider {
    VISIBILITY vs = new VISIBILITY(); //인스턴스 화

    function getExternalFromVS() public view returns (string memory) {
        return vs.externalF();
    }
}