// 당신은 야구팀 감독입니다.
// 감독은 선수들을 관리할 수 있습니다. (주소형 감독 선언)
// 컨트랙트를 처음 배포한 계좌가 감독의 계좌입니다.
// 선수 구조체 안에는 번호, 포지션(투수 or 타자), 
// 상세포지션(1루수? 좌익수? 선발투수? 불펜투수?), 선수계좌, 타자 타율, 투수 방어율, 연봉이 들어갑니다.

// 1. 선수의 이름과 구조체 내용들을 넣어 타자인 선수를 설정해주는 선수를 구현하세요.
// 	 (타자이기에 모든 방어율은 임의의 높은 값으로 설정해주세요. 연봉 초기값 0)
// 2. 선수의 이름과 구조체 내용들을 넣어 투수인 선수를 설정해주는 선수를 구현하세요.
// 	 (타자이기에 모든 타율은 0으로 설정해주세요. 연봉 초기값 0)
// 3. 이름을 입력하면 그 선수의 정보를 받아오는 함수를 구현하세요.
// 4. 이름을 입력하면 그 선수의 정보를 한개씩 받아오는 함수를 구현하세요. 
//    선수가 타자인 경우 상세포지션, 선수계좌, 타율, 연봉이 출력되고 
//    투수인 경우 상세포지션, 선수계좌, 방어율, 연봉이 출력되어야 합니다.
// 5. 특정 선수 이름을 입력하면 그 선수의 상세 포지션이 선발투수인 경우에만 실행되고 
// 	 결과값으로는 그 선수의 계좌, 방어율이 나오는 함수를 구현하세요. 
// 	 (선발투수는 Starting Pitcher 입니다.)
// 6. 특정 선수 이름을 입력하면 연봉협상을 할 수 있는 함수를 구현하세요.
//    선수의 타율이 300 이상이거나 방어율 4 이하여야 함수가 실행될 수 있습니다.
//    선수의 타율이 300이상 350이하 또는 방어율이 3이상 4이하면 선수의 연봉은 10
//    선수의 타율이 350초과 400이하 또는 방어율이 2이상 3미만이면 선수의 연봉은 20
//    선수의 타율이 400초과 450이하 또는 방어율이 1이상 2미만이면 선수의 연봉은 30
//    나머지 경우의 연봉은 40이 됩니다.
// 7. 컨트랙트에 1이더를 충전하는 함수를 구현하세요. (감독만이 함수를 실행시킬 수 있음)
// 8. 특정 이름을 입력하면 그 선수의 계좌에 연봉 * 0.01ETH를 입금해주는 함수를 구현하세요. 
// 	 (컨트랙트 잔고 -> 선수 계좌)
// 9. 특정 이름을 입력하면 그 선수의 계좌 잔고를 보여주는 함수를 구현하세요.
// 10. 원하는 양 만큼 컨트랙트 잔고에 있는 돈을 감독 계좌로 출금시키는 함수를 구현하세요. 
// 	  (감독만이 함수를 실행시킬 수 있음)
// 11. 컨트랙트 잔액을 보여주는 함수를 구현하세요.

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 당신은 야구팀 감독입니다.
// 감독은 선수들을 관리할 수 있습니다. (주소형 감독 선언)
contract test {
    address payable Manager; //급여가 주어져야해서 payable

    constructor() {
        Coach = payable (mag.sender);
    }
// 선수 구조체 안에는 번호, 포지션(투수 or 타자),상세포지션(1루수? 좌익수? 선발투수? 불펜투수?), 선수계좌, 타자 타율, 투수 방어율, 연봉이 들어갑니다.
    struct Player{
        uint num;
        bool position;
        string detailPosition;
        address account;
        uint BA; //타율
        uint ERA; //방어율
        uint Salary;
    }

    Player P;
// 컨트랙트를 처음 배포한 계좌가 감독의 계좌입니다.

// 1. 선수의 이름과 구조체 내용들을 넣어 타자인 선수를 설정해주는 선수를 구현하세요.
// 	 (타자이기에 모든 방어율은 임의의 높은 값으로 설정해주세요. 연봉 초기값 0)
    mapping(string => Player) Players;
    
    function SetHitter(
        string memory _name,
        uint _num, 
        uint _position, 
        address _account, 
        uint _BA, 
        uint _ERA, 
        uint _Salary) public {
        Players[_name] = P(_num,_position,_account,_BA,_ERA,_Salary);
    }



function SetPitcher(
    string memory _name,
    uint _num,
    string memory _detailPosition,
    address _PlayerAddr,
    uint _pitcherAvg,
    ) public {
        Players[_name] = Player(_num,false,_detailPosition,_PlayerAddr,_pitcherAvr,0,0 );
    }

    function getPlayers(string memory _name) public view returns (Player memory){
        return play
    }


//4. 이름을 입력하면 그 선수의 정보를 한개씩 받아오는 함수를 구현하세요. 
//    선수가 타자인 경우 상세포지션, 선수계좌, 타율, 연봉이 출력되고 
//    투수인 경우 상세포지션, 선수계좌, 방어율, 연봉이 출력되어야 합니다.

function getPlayerDetail(string memory _name) public view returns(string momory, address, uint,  uint) {
    if (players[_name].position == true){
        return (
            players[_name].detailposition,
            players[_name].playerAddr,
            players[_name].hitterAvg,
            players[_name].salary
        );
    } else {
        return (
            players[_name].detailposition,
            players[_name].playerAddr,
            players[_name].pitcherAvg,
            players[_name].salary
        );
    }
//5. 특정 선수 이름을 입력하면 그 선수의 상세 포지션이 선발투수인 경우에만 실행되고 
// 	 결과값으로는 그 선수의 계좌, 방어율이 나오는 함수를 구현하세요. 
// 	 (선발투수는 Starting Pitcher 입니다.)
    function 
}