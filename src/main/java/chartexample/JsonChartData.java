package chartexample;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Result;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import model.HibernateUtil;
import model.Listvalue;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
 
public class JsonChartData extends ActionSupport {

  private static final long   serialVersionUID = 6659512910595305843L;
  private List<Listvalue>     objList;
  private Map<Double, Double> doubleMap;

// @Actions({@Action(value = "/json-chart-data", results = {@Result(name = "success", type = "json")})})

  @Override
  public String execute()
  {

    objList = new ArrayList<Listvalue>();
    doubleMap = new TreeMap<Double, Double>();

    Random generator = new Random();
    for (int i = 1; i <= 24; i++)
    {
      doubleMap.put(Double.valueOf("" + i), generator.nextDouble() * 10.0);
    }

    for (int i = 1; i <= 24; i++)
    {
      objList.add(new Listvalue("" + i, "" + generator.nextInt(30)));
    }

    return SUCCESS;
  }

  public String getJSON()
  {
    return execute();
  }

  public List<Listvalue> getObjList()
  {
    return objList;
  }

  public void setObjList(List<Listvalue> objList)
  {
    this.objList = objList;
  }

  public Map<Double, Double> getDoubleMap()
  {
    return doubleMap;
  }

  public void setDoubleMap(Map<Double, Double> doubleMap)
  {
    this.doubleMap = doubleMap;
  }
}