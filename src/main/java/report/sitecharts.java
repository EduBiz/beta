/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package report;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.awt.Point;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import controller.spDAO;
import model.Campaign;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;


public class sitecharts extends ActionSupport {

 private static final long     serialVersionUID = 4851863957798371834L;

  private List<Point>           points;
  private List<Point>           pointsWithNull;
  
  private Map<Integer, Integer> pointsFromMap;
  private Map<Date, Integer>    dateFromMap;
  private Map<String, Integer>  pieDataMap;
  private String                minTime;
  private String                maxTime;
   private spDAO  myDao;
  private Map<String,String>    strmap;
  private Map<Date,Integer> dtmap;
  private Map<Date,Integer> climap;;
  private String search;  

          
@Override
  public String execute() throws Exception
  {
      Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
   
 
    points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
   
    try{
      int rtype=Integer.parseInt(search);
    
    switch(rtype)
    {
        case 1:
      points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
            
            break;
        case 2:   
        
             points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
     
           break;
        case 3:
   
             points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
            
            break;
        case 4:
   points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
            break;
        case 5:
         points = new LinkedList<Point>();

    points.add(new Point(0, 3));
    points.add(new Point(4, 8));
    points.add(new Point(8, 5));
    points.add(new Point(9, 13));

   
    pointsFromMap = new HashMap<Integer, Integer>();
    pointsFromMap.put(2, 5);
    pointsFromMap.put(3, 6);
    pointsFromMap.put(4, 7);
    pointsFromMap.put(5, 8);
    pointsFromMap.put(6, 7);
    pointsFromMap.put(7, 6);
    
            
            break;
        default:
            System.out.println(rtype);
    }
     }
  catch(NumberFormatException ne){
  System.out.println(ne.getMessage() + " is not a numeric value.");
  
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
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }
    

    /**
     * @return the strmap
     */
    public Map<String,String> getStrmap() {
        return strmap;
    }

    /**
     * @return the dtmap
     */
    public Map<Date,Integer> getDtmap() {
        return dtmap;
    }

    /**
     * @return the climap
     */
    public Map<Date,Integer> getClimap() {
        return climap;
    }

    /**
     * @return the search
     */
    public String getSearch() {
        return search;
    }

    /**
     * @param search the search to set
     */
    public void setSearch(String search) {
        this.search = search;
    }

   

    
   

    
}

