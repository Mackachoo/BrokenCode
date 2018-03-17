pragma solidity ^0.4.17;


contract Patient {

    address admin;
    address[] public authorized;

    struct Record {
        string ofType;
        string desc;
    }

    struct Basic {
        string name;
        uint date;
        string gen;
        string _nat;
    }

    Record[] public records;

    function basicInfo (string _name, uint _date, string _gen, string _nat) {
        require(search() == 61);
        Basic info = Basic(_name, _date, _gen, _nat);
    }

    function returnBasicInfo () returns(string name, uint dob, string gender, string nat) {
        require(search() == 61);
        return (name, dob, gender, nat);
    }

    function addRecord (string _ofType, string _desc) {
        require(search() == 61);
        records.push(Record(_ofType, _desc));
    }

    function addAuthorized (address _auth) {
        require(search() == 45);
        authorized.push(_auth);
    }

    function removeAuthorized (address _auth) {
        require(search() == 45);
        for (uint e = 0; e < authorized.length; e++) {
            if (_auth == authorized[e]) {
                delete authorized[e];
            }
        }
    }

    function search () public returns(uint ) {
        for (uint i = 0; i < authorized.length; i++) {
            if (msg.sender == authorized[i]) {
                return 61;
            }
            if (msg.sender == admin) {
                return 45;
            } else {
                return 12;
            }
        }
    }
}


contract Doctor {

    address[] patients;

    function getBasicData (address _add) {

    }

    function getRecords (address _add) {

    }
}
