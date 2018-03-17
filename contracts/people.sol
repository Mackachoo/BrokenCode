pragma solidity ^0.4.17;


contract Patient {

    address admin;
    address[] public authorized;

    struct Record {
        string ofType;
        string desc;
    }

    string[4] public information;
    Record[] public records;

    function addAdmin () {
        require(admin == address(0));
        admin = msg.sender;
    }

    function basicInfo (string _name, string _date, string _gen, string _nat) {
        require(search() == 61);
        information[0] = _name;
        information[1] = _date;
        information[2] = _gen;
        information[3] = _nat;
    }

    function addRecord (string _ofType, string _desc) {
        require(search() == 61);
        records.push(Record(_ofType, _desc));
    }

    function returnRecord (uint _index) returns (string, string) {
        require(search() == 61);
        return (records[_index].ofType, records[_index].desc);
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
