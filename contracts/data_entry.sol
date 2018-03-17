pragma solidity ^0.4.19;

contract DataInfo{
   mapping(address=>Data[]) private data_points;
   struct Data{
      string dataHash;
      string ipfsInfo;
   }
   function uploaddata(string hash, string ipfs) public{
       datapoints[msg.sender].push(Data(hash,ipfs)); //
   }
}
