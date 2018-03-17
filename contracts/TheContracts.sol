pragma solidity ^0.4.19;

//Lets say we have a patient: 1324, Doctor: 5453 and their connecting clone: 9394.


contract Person {

  struct Clone {
    address add;
  }
  Clone[] internal clones;

  function linkClone (address _newClone) {
    clones.push(Clone(_newClone));

  }

}

contract Patient is Person {

  function getName (string _name) {
    string storage patientName = _name;
  }

  function getData () view {

  }


}

contract Doctor is Person {

  function createNewClone {
    address newClone = new CloneData();
  }

}

contract CloneData {

}
