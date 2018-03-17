pragma solidity ^0.4.17;


contract Person {

    function basicInfo (string _name, uint _date, string _gen, string _nat) {
        require(search());
        string name = _name;
        uint dob = _date;
        string gender = _gen;
        string nat = _nat;
    }

    function returnBasicInfo () returns(string name, uint dob, string gender, string nat) {
        require(search());
        return (name, dob, gender, nat);
    }

    function search () public {
        for (uint i = 0; i < authorized.length; i++) {
            if (msg.sender == authorized[i]) {
                return true;
            }
            if (msg.sender == admin) {
                return 45;
            } else {
                return false;
            }
        }
    }
}


contract Patient is Person {

    address admin;
    address[] public authorized;

    struct Record {
        string ofType;
        string desc;
    }

    Record[] public records;

    function addRecord (string storage _ofType, string storage _desc) {
        require(search());
        records.push(Record(_type, _desc));
    }

    function addAuthorized (address _auth) {
        require(search() == 45);
        Authorized.push(_auth);
    }

    function removeAuthorized (address _auth) {
        for (uint e = 0; e < athorized.length; i++) {
            if (_auth == authorized[i]) {
                delete authorized[i];
            }
        }
    }
}


contract Doctor is Person {

    address[] patients;

    function getBasicData (address _add) {
        Patient pt = Patient();
    }

    function getRecords (address _add) {

    }
}
