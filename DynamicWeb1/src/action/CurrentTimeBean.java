package action;

import java.util.Calendar;

public class CurrentTimeBean  {
	private int hours   = 0;
	private int minutes = 0;
	public CurrentTimeBean(){
		Calendar now = Calendar.getInstance();
		this.hours   = now.get(Calendar.HOUR_OF_DAY);
		this.minutes = now.get(Calendar.MINUTE);
	}
	public int getHours(){ return hours; }
	public int getMinutes(){ return minutes; }
	public void setHours(){  }
	public void setMinutes(){  }
}
