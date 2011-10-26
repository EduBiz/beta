/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package report;

import com.opensymphony.xwork2.ActionSupport;
import java.awt.Point;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import chartexample.ListValue;



public class Charts extends ActionSupport {

 private static final long     serialVersionUID = 4851863957798371834L;

  private List<Point>           points;
  private List<Point>           pointsWithNull;
  private List<ListValue>       objList;
  private Map<Integer, Integer> pointsFromMap;
  private Map<Date, Integer>    dateFromMap;
  private Map<String, Integer>  pieDataMap;
  private String                minTime;
  private String                maxTime;

// @Actions({@Action(value = "/charts", results = {@Result(location = "charts.jsp", name = "success")}), @Action(value = "/jsonchartdata", results = {@Result(location = "charts.jsp", name = "success")})})
 @Override
  public String execute() throws Exception
  {
    points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

    pointsWithNull = new LinkedList<Point>();

    pointsWithNull.add(new Point(0, 12));
    pointsWithNull.add(new Point(7, 12));
    pointsWithNull.add(null);
    pointsWithNull.add(new Point(7, 2));
    pointsWithNull.add(new Point(12, 2));

    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);

    pieDataMap = new TreeMap<String, Integer>();
    pieDataMap.put("Java", 18);
    pieDataMap.put("C", 17);
    pieDataMap.put("C++", 10);
    pieDataMap.put("PHP", 8);
    pieDataMap.put("(Visual) Basic", 6);
    pieDataMap.put("C#", 5);

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

    objList = new ArrayList<ListValue>();
    for (int i = 1; i <= 24; i++)
    {
      objList.add(new ListValue("" + i, "" + generator.nextInt(30)));
    }

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
}
