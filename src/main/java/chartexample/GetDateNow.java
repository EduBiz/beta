/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package chartexample;

import java.util.Calendar;
import java.text.SimpleDateFormat;

public class GetDateNow {
 public  GetDateNow()
         {
  Calendar currentDate = Calendar.getInstance();
  currentDate.add(Calendar.DAY_OF_YEAR, -5);
  
  
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy/MM/dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
  
}

}