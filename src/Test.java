import java.util.Calendar;
import java.util.Date;

public class Test {
public static void main(String[] args) {
	Date date = new Date();
	Calendar ca=Calendar.getInstance();
	ca.setTime(date);
	ca.add(Calendar.HOUR_OF_DAY, 8);
	System.out.println(ca.getTime());
}
}
