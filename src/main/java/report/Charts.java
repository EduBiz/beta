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
import java.text.SimpleDateFormat;
import model.Campaign;
import model.Listvalue;
import model.Dateex;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;


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
   private spDAO  myDao;
  private Map<String,String>    strmap;
  private Map<Date,Integer> dtmap;
  private Map<Date,Integer> climap;;
  private String search;  

          
 @Override
  public String execute() throws Exception
  {
    points = new LinkedList<Point>();

    points.add(new Point(60, 73));
    points.add(new Point(74, 78));
    points.add(new Point(78, 85));
    points.add(new Point(89, 93));
    points.add(new Point(95, 100));
    
    Calendar currentDate = Calendar.getInstance();
  //currentDate.add(Calendar.DAY_OF_YEAR, -1);
  //SimpleDateFormat formatter= new SimpleDateFormat("yyyy/MM/dd");
  //String dateNow = formatter.format(currentDate.getTime());
    //String sql="select * from dateex where column2="+dateNow;
    
//  List  dtlist = myDao.getDbsession().createQuery("from Dateex").list();
// Criteria crit = myDao.getDbsession().createCriteria(Dateex.class);
//    crit.add(Restrictions.like("column2", currentDate.getTime()));
//         dtlist=(List)crit.list();
// dtmap=new HashMap<Date,Integer>();
//    for(int i=1;i<dtlist.size();i++)
//    {
//            getDtmap().put(((Dateex)dtlist.get(i)).getColumn2(),((Dateex)dtlist.get(i)).getColumn1());
//    }
//    
// List camlist=myDao.getDbsession().createQuery("from Campaign").list();   
//Criteria critcm = myDao.getDbsession().createCriteria(Campaign.class);
//critcm.add(Restrictions.like("startDate", currentDate.getTime()));
//         camlist=(List)critcm.list();    
//     climap=new HashMap<Date,Integer>();
//    for(int i=1;i<camlist.size();i++)
//        {
//        climap.put(((Campaign)camlist.get(i)).getStartDate(),i);
//        }
 
    try{
      int rtype=Integer.parseInt(search);
    
    switch(rtype)
    {
        case 1:
        
            List  dtlist = myDao.getDbsession().createQuery("from Dateex").list();
 Criteria crit = myDao.getDbsession().createCriteria(Dateex.class);
    crit.add(Restrictions.like("column2", currentDate.getTime()));     
    dtlist=(List)crit.list();
 dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<dtlist.size();i++)
    {
            getDtmap().put(((Dateex)dtlist.get(i)).getColumn2(),((Dateex)dtlist.get(i)).getColumn1());
    }
    
 List camlist=myDao.getDbsession().createQuery("from Campaign").list();   
Criteria critcm = myDao.getDbsession().createCriteria(Campaign.class);
critcm.add(Restrictions.like("startDate", currentDate.getTime()));
         camlist=(List)critcm.list();    
     climap=new HashMap<Date,Integer>();
    for(int i=1;i<camlist.size();i++)
        {
        climap.put(((Campaign)camlist.get(i)).getStartDate(),i);
        }
            
            break;
        case 2:   
          currentDate.add(Calendar.DAY_OF_YEAR, -1);
            List  dlist = myDao.getDbsession().createQuery("from Dateex").list();
 Criteria cr = myDao.getDbsession().createCriteria(Dateex.class);
    cr.add(Restrictions.like("column2", currentDate.getTime()));
         dlist=(List)cr.list();
 dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<dlist.size();i++)
    {
            getDtmap().put(((Dateex)dlist.get(i)).getColumn2(),((Dateex)dlist.get(i)).getColumn1());
    }
    
 List cmlist=myDao.getDbsession().createQuery("from Campaign").list();   
Criteria cri = myDao.getDbsession().createCriteria(Campaign.class);
cri.add(Restrictions.like("startDate", currentDate.getTime()));
         cmlist=(List)cri.list();    
     climap=new HashMap<Date,Integer>();
    for(int i=1;i<cmlist.size();i++)
        {
        climap.put(((Campaign)cmlist.get(i)).getStartDate(),i);
        }
            
            
            
     System.out.println(rtype);
           break;
        case 3:
            System.out.println(rtype);
            break;
        case 4:
            System.out.println(rtype);
            break;
        case 5:
                List tlist=myDao.getDbsession().createQuery("from Dateex").list();
 
    dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<tlist.size();i++)
    {
            getDtmap().put(((Dateex)tlist.get(i)).getColumn2(),((Dateex)tlist.get(i)).getColumn1());
    }
    
 List camlis=myDao.getDbsession().createQuery("from Campaign").list();   

    climap=new HashMap<Date,Integer>();
    for(int i=1;i<camlis.size();i++)
        {
        climap.put(((Campaign)camlis.get(i)).getStartDate(),i);
        }
            
            
            
            System.out.println(rtype);
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
