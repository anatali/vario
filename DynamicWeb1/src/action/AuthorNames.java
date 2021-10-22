package action;

import java.util.Collections;
import java.util.Enumeration;
import java.util.Vector;

public class AuthorNames {
	private Vector<String> Names = new Vector<String>();
	private Enumeration<String> orderedNames ;
	private String uniqueName = "";
	private String prefix = "";
	
	public AuthorNames() {
		Names.add("Alfieri  Vittorio");
		Names.add("Manzoni Alessandro");
		Names.add("Alighieri Dante");
		Names.add("Ariosto  Ludovico");
		//ordinare		
		Collections.sort(Names);
		orderedNames = Names.elements();
	};
	
	public void setPrefix(String v) {
		System.out.println("setPrefix " + v);
		prefix = v;
	}
	
	public String getUniqueName( ) {
		uniqueName = findUniqueName( prefix );
		return uniqueName;
	}

 	private String findUniqueName( String prefix ) {
		int count = 0;
		String found="";
		while(orderedNames.hasMoreElements()){
			String v = orderedNames.nextElement();
			if( v.startsWith(prefix) ){
				found=v; 
				count++; 
			}
		}
		if( count==1) return found;
		else return "";
	}
 
 
	

}
