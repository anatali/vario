 /*
* =====================================
* VA ESEGUITA LATO SERVER usando node
* =====================================
*/

//see https://www.npmjs.com/package/node-rest-client;
'use strict';
var RestClient = require('node-rest-client').Client;
var client = new RestClient();

var urlLed1 = 'http://localhost:3000/pi/actuators/leds/L1';
//var urlLed1 = 'http://192.168.43.229:3000/pi/actuators/leds/1';
//var urlLed1 = 'http://192.168.43.18:3000/pi/actuators/leds/1';

var doGet = function(){
	client.get(urlLed1, function (data, response) {
	    // parsed response body as js object;
	    console.log(data);
	    // raw response;
	//    console.log(response);
	}); 
}

var doPut = function(newvalue){
//set content-type header and data as json in args parameter
	var args = {
	    data: { value: newvalue },
	    headers: { "Content-Type": "application/json" }
	};
	 
	client.put(urlLed1, args, function (data, response) {
	    // parsed response body as js object;
		console.log("PUT done");
//	    console.log(data);
	    // raw response;
	//    console.log(response);
});
}

setTimeout(doGet, 100);
setTimeout( function(){ doPut("true"); } , 400);
setTimeout(doGet, 700);
//setTimeout(function(){ doPut("false"); } , 1000);
setTimeout(doGet, 1300);
/*		
doGet();
doPut("true");
doGet();
doPut("false");
doGet();
*/