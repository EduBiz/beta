/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package chartexample;

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




public class demobean {

 

  private List<Point>           points;
  private List<Point>           pointsWithNull;
  private List<ListValue>       objList;
  private Map<Integer, Integer> pointsFromMap;
  private Map<Date, Integer>    dateFromMap;
  private Map<String, Integer>  pieDataMap;
  private String                minTime;
  private String                maxTime;
 

  public List<Point> getPoints()
  {
      points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

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
