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
   /*   Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
    points = new LinkedList<Point>();

    points.add(new Point(60, 73));
    points.add(new Point(74, 78));
    points.add(new Point(78, 85));
    points.add(new Point(89, 93));
    points.add(new Point(95, 100));
    
    Calendar currentDate = Calendar.getInstance();

 
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
    
    
    
   
    try{
      int rtype=Integer.parseInt(search);
    
    switch(rtype)
    {
        case 1:
        
            List  dt = myDao.getDbsession().createQuery("from Dateex").list();
 Criteria crita = myDao.getDbsession().createCriteria(Dateex.class);
    crita.add(Restrictions.like("column2", currentDate.getTime()));     
    dt=(List)crita.list();
 dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<dt.size();i++)
    {
            getDtmap().put(((Dateex)dt.get(i)).getColumn2(),((Dateex)dt.get(i)).getColumn1());
    }
    
 List camlists=myDao.getDbsession().createQuery("from Campaign").list();   
Criteria critcms = myDao.getDbsession().createCriteria(Campaign.class);
critcms.add(Restrictions.like("startDate", currentDate.getTime()));
         camlists=(List)critcms.list();    
     climap=new HashMap<Date,Integer>();
    for(int i=1;i<camlists.size();i++)
        {
        climap.put(((Campaign)camlists.get(i)).getStartDate(),i);
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
            
            
            
     
           break;
        case 3:
              
             Query q = myDao.getDbsession().createSQLQuery(
"SELECT  * FROM dateex  WHERE   column2 BETWEEN SYSDATE() - INTERVAL 7 DAY AND SYSDATE()")
.addEntity(Dateex.class);
List<Dateex> re = q.list();
    dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<re.size();i++)
    {
    dtmap.put(((Dateex)re.get(i)).getColumn2(),((Dateex)re.get(i)).getColumn1());
    }
    
   Query qr=myDao.getDbsession().createSQLQuery("SELECT  * FROM campaign  WHERE   start_date BETWEEN SYSDATE() - INTERVAL 7 DAY AND SYSDATE()")
.addEntity(Campaign.class);
List<Campaign> rs=qr.list(); 
climap=new HashMap<Date,Integer>();
  for(int i=1;i<rs.size();i++)  
  {
  climap.put(((Campaign)rs.get(i)).getStartDate(), i);
  }
            
            
            
            
            break;
        case 4:
            
             Query query = myDao.getDbsession().createSQLQuery(
"SELECT  * FROM dateex  WHERE   column2 BETWEEN SYSDATE() - INTERVAL 30 DAY AND SYSDATE()")
.addEntity(Dateex.class);
List<Dateex> result = query.list();
    dtmap=new HashMap<Date,Integer>();
    for(int i=1;i<result.size();i++)
    {
    dtmap.put(((Dateex)result.get(i)).getColumn2(),((Dateex)result.get(i)).getColumn1());
    }
    
   Query qry=myDao.getDbsession().createSQLQuery("SELECT  * FROM campaign  WHERE   start_date BETWEEN SYSDATE() - INTERVAL 30 DAY AND SYSDATE()")
.addEntity(Campaign.class);
List<Campaign> r=qry.list(); 
climap=new HashMap<Date,Integer>();
  for(int i=1;i<r.size();i++)  
  {
  climap.put(((Campaign)r.get(i)).getStartDate(), i);
  }
            

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
            
            
            
            
            break;
        default:
            System.out.println(rtype);
    }
     }
  catch(NumberFormatException ne){
  System.out.println(ne.getMessage() + " is not a numeric value.");
  
  }
    
*/
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

