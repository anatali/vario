/*
 * From 2.04.JavaScript.pdf
 */
 

function buildObject (){	//pg. 13
var o = new Object();
	o.x = 7;
	o.y = 8;
	o.tot = o.x + o.y;
	//alert(o.tot );
	console.log("buildObject o.tot="+ o.tot)
}

function buildObjectArray (){	//pg. 16
var o = new Object();
	o["x"]    = 7;
	o .y      = 8;
	o["tot"]  = o.x + o.y;
	console.log("buildObjectArray o.tot=" + o.tot);
}

function exprReg (){	//pg. 19
	var r1 = /[abc]/;
	var r2 = new RegExp("a*b");
	console.log("exprReg r1=" + r1 + " r2=" + r2);
}

function createSum(){  //pg. 22
	var sum = function(x,y){ 
		var s = x + y ;
		return s
	}
	console.log("createSum:" + sum);
	return sum
}

function objMethod(){ //pg. 23
	var o = new Object();
	o.x = 7;
	o.y = 8;
	o.tot = function(){ return this.x + this.y };
	console.log("objMethod o.tot()="+ o.tot())
	
}


function construct(){ //pg. 24
	
	function Rectangle(w, h) {
		this.w = w;
		this.h = h;
		this.area      = function(){ return this.w * this.h;    }
		this.perimeter = function(){ return 2*(this.w + this.h);}	
	}
	
	Rectangle.color     = "blue"                                 //proprietà statica pg. 25
	Rectangle.quadrato  = function(r){ return r.w == r.h  ;}	 //metodo statuco pg. 25
	
	var r = new Rectangle(5,4);
	console.log("rectangle area="+ r.area() + " color=" + Rectangle.color + " quadrato:" + Rectangle.quadrato(r) )
	
}

//ADDED
var count = 1;
var showhello = function(){ console.log("hello"+ count++) }; 

function dofibo(n){
	var v = -1;
	if( n == 0 || n == 1 ) v = n;
	else{
		v =  dofibo(n-1) + dofibo(n-2);
	}	
	return v
}
function fibo(n){
	console.log( "fibo("+n+")="+ dofibo(n) );
}
 

function useTimeout(){
	for ( var i = 1; i <= 3; i++ ) setTimeout( showhello, 400);  //pg. 8
}


//window.addEventListener('load', function () { console.log('Executed by jsNotes.js once the page is fully loaded'); });



