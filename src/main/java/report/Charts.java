/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package report;

import com.opensymphony.xwork2.ActionSupport;
import java.awt.Point;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import chartexample.ListValue;
import controller.spDAO;
import model.Listvalue;



public class Charts extends ActionSupport {

 private static final long     serialVersionUID = 4851863957798371834L;

  private List<Point>           points;
  private List<Point>           pointsWithNull;
  private List<ListValue>        objList;
  private Map<Integer, Integer> pointsFromMap;
  private Map<Date, Integer>    dateFromMap;
  private Map<String, Integer>  pieDataMap;
  private String                minTime;
  private String                maxTime;
   spDAO          myDao;
  private Map<String,String>    strmap;
  
 @Override
  public String execute() throws Exception
  {
    points = new LinkedList<Point>();

    points.add(new Point(60, 73));
    points.add(new Point(74, 78));
    points.add(new Point(78, 85));
    points.add(new Point(89, 93));
    points.add(new Point(95, 100));
    
   List dblist=myDao.getDbsession().createQuery("from Listvalue").list();
   
   
    strmap = new HashMap<String,String>();
    for (int i = 1; i <dblist.size(); i++)
    {
    strmap.put(((Listvalue)dblist.get(i)).getColumn1(),((Listvalue)dblist.get(i)).getColumn2());
    
    }
 
    dateFromMap = new TreeMap<Date, Integer>();
    Calendar calendar = Calendar.getInstance();
    calendar.add(Calendar.YEAR, -2);

    minTime = "" + calendar.getTime().getTime();
    System.out.println("minTime : " + minTime);

    Random generator = new Random();
    for (int i = 1; i <= 24; i++)
    {
      dateFromMap.put(calendar.getTime(), generator.nextInt(100));
      calendar.add(Calendar.MONTH, +1);
    }
    maxTime = "" + calendar.getTime().getTime();
    System.out.println("maxTime : " + maxTime);

    

    return "success";
  }

  public List<Point> getPoints()
  {
    return points;
  }

  public List<Point> getPointsWithNull()
  {
    return pointsWithNull;
  }

  public Map<Integer, Integer> getPointsFromMap()
  {
    return pointsFromMap;
  }

  public Map<Date, Integer> getDateFromMap()
  {
    return dateFromMap;
  }

  public String getMinTime()
  {
    return minTime;
  }

  public String getMaxTime()
  {
    return maxTime;
  }

  public List<ListValue> getObjList()
  {
    return objList;
  }

  public Map<String, Integer> getPieDataMap()
  {
    return pieDataMap;
  }

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }


    /**
     * @return the strmap
     */
    public Map<String,String> getStrmap() {
        return strmap;
    }

    
   

    
}
