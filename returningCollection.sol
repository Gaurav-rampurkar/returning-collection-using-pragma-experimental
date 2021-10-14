// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract collections {
    struct User {
       address userAddress;
      uint balance;
    }
    User[] users;
    
    // TRADITONAL METHOD TO RETURN THE COLLECTION 
     
     function getUsers1() external returns (address[] memory, uint[]memory){
     address[]memory userAddresses = new address[](users.length);
     uint[]memory balances = new uint[](users.length);
     
     
     for (uint i=0; i < users.length; i++) {
         userAddresses[i]= users[i].userAddress;
         balances[i]= users[i].balance;
     }
     
     return (userAddresses ,balances);
     
     //above is almost 8 line code to return the collection of data 
}


//THIS METHOD REDUCE THE CODE FROM 8 LINE TO ONLY TWO LINES USING 
//   PRAGMA EXPERIMENTAL ABIENCODERV2;
  
  
  function getUsers2() external returns (User []memory)
  {
      return(users );
  }
}
