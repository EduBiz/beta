/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package report;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import controller.spDAO;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.Restrictions;

public class Charts extends ActionSupport {

    private spDAO myDao;
    private Map<Date, Integer> impmap;
    private Map<Date, Integer> climap;
    private Map<Date, BigDecimal> costmap;
    private String search;
    private User user;
    private Campaign campaign;
    private ReportCampaign reportcamp;
    private ReportcDaily campdaily;
    private List<ReportcDaily> report;
    private List<Campaign> camlist;
    private List<ReportCampaign> reportlist;
    private String minTime;
    private String maxTime;
    private String xaxis;
    private String yaxis;
    private String iaxis;

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("User"));

        try {
            camlist = new ArrayList<Campaign>(user.getCampaigns());


            Calendar currentDate = Calendar.getInstance();

            maxTime = "" + currentDate.getTime().getTime();

            /*Criteria camcri = myDao.getDbsession().createCriteria(Campaign.class);
            camcri.add(Restrictions.eq("user", user));
            camlist = camcri.list();*/

            Criteria repocam = myDao.getDbsession().createCriteria(ReportCampaign.class);
            // repocam.add(Restrictions.eq("campaign", camlist.get(0)));
            repocam.add(Restrictions.in("campaign", camlist));
            repocam.setMaxResults(1000);
            reportlist = repocam.list();

            currentDate.add(Calendar.DATE, -10);
            minTime = "" + currentDate.getTime().getTime();
            xaxis = "[2,'day']";
            yaxis = "1";
            iaxis = "10";
            System.out.println("Mintime of -10:\t\t" + minTime);
            System.out.println("Current date:\t" + currentDate.getTime());
            Criteria rdaily = myDao.getDbsession().createCriteria(ReportcDaily.class);
            //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
            rdaily.add(Restrictions.in("reportCampaign", reportlist));
            //rdaily.add(Restrictions.like("rdate", currentDate.getTime()));
            rdaily.add(Restrictions.ge("rdate", currentDate.getTime()));
            rdaily.setMaxResults(500);

            report = rdaily.list();

            System.out.println("Report size:\t\t" + report.size());


            impmap = new HashMap<Date, Integer>();
            for (int i = 0; i < report.size(); i++) {
                impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

            }
            climap = new HashMap<Date, Integer>();

            for (int i = 0; i < report.size(); i++) {
                climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Clicks\t\t" + report.get(i).getClicks());
            }
            costmap = new HashMap<Date, BigDecimal>();

            for (int i = 0; i < report.size(); i++) {
                costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
            }

            try {
                int rtype = Integer.parseInt(getSearch());

                switch (rtype) {
                    case 1:

                        currentDate.add(Calendar.DATE, 0);
                        xaxis = "[2,'day']";
                        yaxis = "1";
                        iaxis = "10";
                        minTime = "" + currentDate.getTime().getTime();
                        System.out.println("Mintime of -0\t\t" + minTime);
                        System.out.println("Current date" + currentDate.getTime());
                        Criteria rt = myDao.getDbsession().createCriteria(ReportcDaily.class);
                        //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
                        rt.add(Restrictions.in("reportCampaign", reportlist));
                        // rt.add(Restrictions.like("rdate", currentDate.getTime()));
                        rt.add(Restrictions.ge("rdate", currentDate.getTime()));
                        rt.setMaxResults(500);

                        report = rt.list();

                        System.out.println("Report size:\t\t" + report.size());


                        impmap = new HashMap<Date, Integer>();
                        for (int i = 0; i < report.size(); i++) {
                            impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

                        }
                        climap = new HashMap<Date, Integer>();

                        for (int i = 0; i < report.size(); i++) {
                            climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getClicks());
                        }
                        costmap = new HashMap<Date, BigDecimal>();

                        for (int i = 0; i < report.size(); i++) {
                            costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
                        }
                        addActionMessage("Today");

                        break;
                    case 2:
                        currentDate.add(Calendar.DATE, -1);
                        xaxis = "[2,'day']";
                        yaxis = "1";
                        iaxis = "10";
                        minTime = "" + currentDate.getTime().getTime();
                        System.out.println("Mintime of -1\t\t" + minTime);
                        System.out.println("Current date" + currentDate.getTime());
                        Criteria rl = myDao.getDbsession().createCriteria(ReportcDaily.class);
                        //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
                        rl.add(Restrictions.in("reportCampaign", reportlist));
                        // rl.add(Restrictions.like("rdate", currentDate.getTime()));
                        rl.add(Restrictions.ge("rdate", currentDate.getTime()));
                        rl.setMaxResults(500);

                        report = rl.list();

                        System.out.println("Report size:\t\t" + report.size());


                        impmap = new HashMap<Date, Integer>();
                        for (int i = 0; i < report.size(); i++) {
                            impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

                        }
                        climap = new HashMap<Date, Integer>();

                        for (int i = 0; i < report.size(); i++) {
                            climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getClicks());
                        }
                        costmap = new HashMap<Date, BigDecimal>();

                        for (int i = 0; i < report.size(); i++) {
                            costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
                        }

                        addActionMessage("Lastday");
                        break;
                    case 3:
                        xaxis = "[2,'day']";
                        yaxis = "1";
                        iaxis = "10";
                        currentDate.add(Calendar.DATE, -7);
                        minTime = "" + currentDate.getTime().getTime();
                        System.out.println("Mintime of -7\t\t" + minTime);
                        System.out.println("Current date" + currentDate.getTime());

                        Criteria r7 = myDao.getDbsession().createCriteria(ReportcDaily.class);
                        //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
                        r7.add(Restrictions.in("reportCampaign", reportlist));
                        // r7.add(Restrictions.like("rdate", currentDate.getTime()));
                        r7.add(Restrictions.ge("rdate", currentDate.getTime()));
                        r7.setMaxResults(500);

                        report = r7.list();


                        System.out.println("Report size:\t\t" + report.size());

                        impmap = new HashMap<Date, Integer>();
                        for (int i = 0; i < report.size(); i++) {
                            impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

                        }
                        climap = new HashMap<Date, Integer>();

                        for (int i = 0; i < report.size(); i++) {
                            climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getClicks());
                        }
                        costmap = new HashMap<Date, BigDecimal>();

                        for (int i = 0; i < report.size(); i++) {
                            costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
                        }
                        addActionMessage("Last 7 Days");
                        break;
                    case 4:

                        currentDate.add(Calendar.DATE, -30);

                        xaxis = "[3,'day']";
                        yaxis = "10";
                        minTime = "" + currentDate.getTime().getTime();
                        System.out.println("Mintime of -30\t\t" + minTime);
                        System.out.println("Current date" + currentDate.getTime());

                        Criteria r30 = myDao.getDbsession().createCriteria(ReportcDaily.class);
                        //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
                        r30.add(Restrictions.in("reportCampaign", reportlist));
                        //r30.add(Restrictions.like("rdate", currentDate.getTime()));
                        r30.add(Restrictions.ge("rdate", currentDate.getTime()));
                        r30.setMaxResults(500);

                        report = r30.list();


                        System.out.println("Report size:\t\t" + report.size());

                        impmap = new HashMap<Date, Integer>();
                        for (int i = 0; i < report.size(); i++) {
                            impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

                        }
                        climap = new HashMap<Date, Integer>();

                        for (int i = 0; i < report.size(); i++) {
                            climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getClicks());
                        }
                        costmap = new HashMap<Date, BigDecimal>();

                        for (int i = 0; i < report.size(); i++) {
                            costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
                        }
                        addActionMessage("Last 30 Days");
                        break;
                    case 5:
                        currentDate.add(Calendar.YEAR, -1);

                        xaxis = "[1,'month']";
                        yaxis = "10";

                        minTime = "" + currentDate.getTime().getTime();
                        System.out.println("Mintime of -30\t\t" + minTime);
                        System.out.println("Current date" + currentDate.getTime());

                        Criteria rall = myDao.getDbsession().createCriteria(ReportcDaily.class);
                        //rdaily.add(Restrictions.eq("reportCampaign", reportlist.get(0)));
                        rall.add(Restrictions.in("reportCampaign", reportlist));



                        rall.setMaxResults(500);

                        report = rall.list();

                        System.out.println("Report size:\t\t" + report.size());


                        impmap = new HashMap<Date, Integer>();
                        for (int i = 0; i < report.size(); i++) {
                            impmap.put(report.get(i).getRdate(), report.get(i).getImpressions());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getImpressions());

                        }
                        climap = new HashMap<Date, Integer>();

                        for (int i = 0; i < report.size(); i++) {
                            climap.put(report.get(i).getRdate(), report.get(i).getClicks());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Impressions\t\t" + report.get(i).getClicks());
                        }
                        costmap = new HashMap<Date, BigDecimal>();

                        for (int i = 0; i < report.size(); i++) {
                            costmap.put(report.get(i).getRdate(), report.get(i).getTotalCost());
                            System.out.println(i + "Date \t\t" + report.get(i).getRdate() + "\t Costs\t\t" + report.get(i).getTotalCost());
                        }
                        addActionMessage("Your Complete");

                        break;
                    default:
                        System.out.println(rtype);
                }
            } catch (NumberFormatException ne) {
                System.out.println(ne.getMessage() + " is not a numeric value.");

            }


            return "success";

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("You Have No Campaign Please Create or No Data Available");
            return "error";
        }
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
     * @return the climap
     */
    public Map<Date, Integer> getClimap() {
        return climap;
    }

    /**
     * @param climap the climap to set
     */
    public void setClimap(Map<Date, Integer> climap) {
        this.climap = climap;
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

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the campaign
     */
    public Campaign getCampaign() {
        return campaign;
    }

    /**
     * @param campaign the campaign to set
     */
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }

    /**
     * @return the reportcamp
     */
    public ReportCampaign getReportcamp() {
        return reportcamp;
    }

    /**
     * @param reportcamp the reportcamp to set
     */
    public void setReportcamp(ReportCampaign reportcamp) {
        this.reportcamp = reportcamp;
    }

    /**
     * @return the campdaily
     */
    public ReportcDaily getCampdaily() {
        return campdaily;
    }

    /**
     * @param campdaily the campdaily to set
     */
    public void setCampdaily(ReportcDaily campdaily) {
        this.campdaily = campdaily;
    }

    /**
     * @return the impmap
     */
    public Map<Date, Integer> getImpmap() {
        return impmap;
    }

    /**
     * @param impmap the impmap to set
     */
    public void setImpmap(Map<Date, Integer> impmap) {
        this.impmap = impmap;
    }

    /**
     * @return the report
     */
    public List<ReportcDaily> getReport() {
        return report;
    }

    /**
     * @param report the report to set
     */
    public void setReport(List<ReportcDaily> report) {
        this.report = report;
    }

    /**
     * @return the costmap
     */
    public Map<Date, BigDecimal> getCostmap() {
        return costmap;
    }

    /**
     * @param costmap the costmap to set
     */
    public void setCostmap(Map<Date, BigDecimal> costmap) {
        this.costmap = costmap;
    }

    /**
     * @return the camlist
     */
    public List<Campaign> getCamlist() {
        return camlist;
    }

    /**
     * @param camlist the camlist to set
     */
    public void setCamlist(List<Campaign> camlist) {
        this.camlist = camlist;
    }

    /**
     * @return the reportlist
     */
    public List<ReportCampaign> getReportlist() {
        return reportlist;
    }

    /**
     * @param reportlist the reportlist to set
     */
    public void setReportlist(List<ReportCampaign> reportlist) {
        this.reportlist = reportlist;
    }

    /**
     * @return the minTime
     */
    public String getMinTime() {
        return minTime;
    }

    /**
     * @param minTime the minTime to set
     */
    public void setMinTime(String minTime) {
        this.minTime = minTime;
    }

    /**
     * @return the maxTime
     */
    public String getMaxTime() {
        return maxTime;
    }

    /**
     * @param maxTime the maxTime to set
     */
    public void setMaxTime(String maxTime) {
        this.maxTime = maxTime;
    }

    /**
     * @return the xaxis
     */
    public String getXaxis() {
        return xaxis;
    }

    /**
     * @param xaxis the xaxis to set
     */
    public void setXaxis(String xaxis) {
        this.xaxis = xaxis;
    }

    /**
     * @return the yaxis
     */
    public String getYaxis() {
        return yaxis;
    }

    /**
     * @param yaxis the yaxis to set
     */
    public void setYaxis(String yaxis) {
        this.yaxis = yaxis;
    }

    /**
     * @return the iaxis
     */
    public String getIaxis() {
        return iaxis;
    }

    /**
     * @param iaxis the iaxis to set
     */
    public void setIaxis(String iaxis) {
        this.iaxis = iaxis;
    }
}
