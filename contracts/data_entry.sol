pragma solidity ^0.4.19;

contract DataInfo{
   mapping(address=>Data[]) private data_points;
   struct Data{
      string dataHash;
   }
   function uploaddata(string hash) public{
       datapoints[msg.sender].push(Data(hash)); //
   }
}
