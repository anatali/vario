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