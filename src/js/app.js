App = {
    web3Provider: null,
    contracts: {},

    initWeb3: function() {
        if (typeof web3 !== 'undefined') {
            App.web3Provider = web3.currentProvider;
        } else {
            // If no injected web3 instance is detected, fall back to Ganache
            App.web3Provider = new Web3.providers.HttpProvider('http://localhost:7545');
        }
        web3 = new Web3(App.web3Provider);

        return App.initContract();
    },

    initContract: function() {
        $.getJSON('../build/contracts/Patient.json', function(data) {
            var PatientArtifact = data;
            App.contracts.Patient = TruffleContract(PatientArtifact);
            App.contracts.Patient = setProvider(App.web3Provider);
        });

        return App.bindEvents();
    },

    bindEvents: function() {
        $(document).on('click', 'btn-default', App.setBasicData);
    },

    setBasicData: function() {
        var patientInstance;

        App.contracts.Patient.deployed().then(function(instance) {
        patientInstance = instance;

        $("#button").click(function() {
            patientInstance.basicInfo($("#name").val(), $("#dob").val(), $("#gender").val(), $("nationality").val());
        });
        });
        console.log("parameters set");
    }
};

$(function() {
    $(window).load(function() {
        App.initWeb3();
    });
});