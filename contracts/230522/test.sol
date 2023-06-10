// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

//숫자를 시분초로 변환하세요.
//예) 100 -> 1분 40초, 600 -> 10분, 1000 -> 16분 40초, 5250 -> 1시간 27분 30초

 contract test {

     struct time {
         uint hour;
         uint min;
         uint sec;
     }

     time[] T;
function change(uint n) public returns (uint _hour,uint _min,uint _sec) {
   
    _hour = n/60/60;
    _min = (n%3600)/60;
    _sec = n%60;
    
    T.push(time(_hour,_min,_sec));
    

    }
}




// function Div(uint _a, uint _b) public pure returns(uint, uint) {
//         return (_a/_b, _a%_b);
//     }
//  }
