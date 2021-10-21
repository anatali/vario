package it.tecnologieweb.app;

public class HelloWorld {

	public static final String GREETING = "Hello World, ";

	// -----------------------------------
	
	private String name;
	
	// -----------------------------------

	public void setName(String name) {
		this.name = name;
	}
	
	// -----------------------------------

	public HelloWorld() {
	}

	// -----------------------------------

	public String sayIt() {
		return GREETING + name;
	}
	
}
