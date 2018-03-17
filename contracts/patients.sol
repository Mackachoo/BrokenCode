pragma solidity ^0.4.17;

contract Patient {

  address Admin;
  address[] public Authorized;

  function basicInfo private (string storage _name, uint storage _date, string storage _gender, string storage _nationality) {
    require(Search);
    string storage Name = _name;
    uint storage DoB = _date;
    string storage Gender = _gender;
    string storage Nat = _nationality;
  }

  struct Record {
    string Type;
    string Desc;
  }

  Record[] public records;

  function AddRecord private (string storage _type, string storage _desc) {
    require(Search);
    records.push(Record(_type,_desc));
  }

  function addAuthorized (address _auth) {
    require(Search==45);
    Authorized.push(_auth)
  }

  function removeAuthorized (address _auth) {
    for (uint e = 0; e < Authorized.length; i++) {
      if (_auth == Authorized[i]) {
        delete Authorized[i];
      }
    }
  }

  function Search () {
    for (uint i = 0; i < Authorized.length; i++) {
      if (msg.sender == Authorized[i]) {
        return true;
      } if (msg.sender == Admin) {
        return 45;
      } else {
        return false;
      }
    }
  }

}
