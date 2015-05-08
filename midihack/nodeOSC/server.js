
var osc = require('node-osc');
var express = require('express');
var app = express();

app.use(express.static('client'));

var selected_bank = 0;
var bank_names = [ "lAZyfISh", "Light Speed Drivers", "LSD / LF" ];

var selected_snapshot = 0;
var snapshot_names = [
  ["Kiopp Ten", "Quanda N3", "Roorooll", "Dew Nokker", "Seerenius Fix",
	 "Losx Eag", "Yolkoo", "Treng Noonna", "Awraampa", "Ollenoye"],
	["S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10"],
	["W1", "W2", "W3", "W4", "W5", "W6", "W7", "W8", "W9", "W10"]
];

function getCurrentBankAndSnapshotName() {
	var bank = bank_names[selected_bank];
	var snapshot = snapshot_names[selected_bank][selected_snapshot];	
	return bank + " - " + snapshot;
}

// return index of currently selected bank
app.get('/current/bank', function (req, res) {
  res.send(selected_bank);
});

// return index of currently selected snapshot
app.get('/current/snapshot', function (req, res) {
  res.send(selected_snapshot);
});

// return name of currently playing bank + snapshot
app.get('/current/name', function (req, res) {
  res.send(getCurrentBankAndSnapshotName());
});

// forward index of selected bank via OSC
app.get('/select/bank/:index', function (req, res) {
	selected_bank = req.params.index;

	var client = new osc.Client('localhost', 10001);
	client.send('/select/bank', req.params.index);
  res.send("");
});

// forward index of selected snapshot via OSC
app.get('/select/snapshot/:index', function (req, res) {
	selected_snapshot = req.params.index;

	var client = new osc.Client('localhost', 10001);
	client.send('/select/snapshot', req.params.index);
  res.send("");
});

// enter main loop
var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('TG-08 Web Remote Ctrl Server listening at http://%s:%s', host, port);
});


/*
var client = new osc.Client('localhost', 10000);
client.send('/testOscAddress', 1, 1, 2, 3, 5, 8);

console.log('Sent OSC message to %s:%s/testOscAddress', host, port);*/

// or
// var msg =  new osc.Message('/address')
// msg.append("testing");
// msg.append("testing");
// msg.append(123);
// client.send(msg)

// or
// var msg = new osc.Message('/address', 1, 2, 3);
// client.send(msg);