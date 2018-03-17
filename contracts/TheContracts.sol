pragma solidity ^0.4.19;

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


}

contract Doctor is Person {

  function createNewClone()

}
