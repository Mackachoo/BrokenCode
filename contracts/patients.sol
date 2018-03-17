pragma solidity ^0.4.17;

contract Patient {

  address[] public Authorized;

  function basicInfo (string storage _name, uint storage _date, string storage _gender, string storage _nationality) {
    string storage Name = _name;
    uint storage DoB = _date;
    string storage Gender = _gender;
    string storage Nat = _nationality;
  }

  struct Record {
    string Type;
    string Desc;
  }

  function AddRecord (string storage _type, string storage _desc) {

  }

}
