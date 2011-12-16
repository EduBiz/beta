MB.campaign.dates=function(){var a=false;return{endDate:null,startDate:null,init:function(){this.startDate=new Ext.form.DateField({autoCreate:true,validationEvent:true,format:"Y-m-d",hideLabel:true,name:"start",renderTo:"start",maxLength:10,id:"startDateField",width:90});Ext.get("startDateField").dom.value=start;this.endDate=new Ext.form.DateField({autoCreate:true,validationEvent:true,format:"Y-m-d",hideLabel:true,name:"end",renderTo:"end",maxLength:10,id:"endDateField",width:90});Ext.get("endDateField").dom.value=end;Ext.fly("endEnabled").on("change",this.handleEndCheckboxChange,this);Ext.fly("endEnabled").on("click",this.handleEndCheckboxChange,this);this.startDate.addListener("change",this.updateMinAndMaxDates,this);this.endDate.addListener("change",this.updateMinAndMaxDates,this);this.handleEndCheckboxChange()},handleEndCheckboxChange:function(){var b=Ext.fly("endEnabled").dom.checked;if(b){Ext.fly("endElement").removeClass("disabled");Ext.get("endMin").dom.removeAttribute("disabled");Ext.get("endHour").dom.removeAttribute("disabled");this.endDate.enable()}else{Ext.get("endMin").dom.setAttribute("disabled","disabled");Ext.get("endHour").dom.setAttribute("disabled","disabled");Ext.fly("endElement").addClass("disabled");this.endDate.disable()}this.updateMinAndMaxDates()},updateMinAndMaxDates:function(){var b=Ext.fly("endEnabled").dom.checked;if(b){this.startDate.setMaxValue(this.endDate.getValue());if(this.startDate.getValue()){if(a){var e=this.startDate.getValue();e.setDate(this.startDate.getValue().getDate()+1);this.endDate.setMinValue(e)}else{this.endDate.setMinValue(this.startDate.getValue())}}}else{this.startDate.setMaxValue(null);this.endDate.setMinValue(null)}if(a){var d=new Date();d.setDate(new Date().getDate()+180);if(d<this.startDate.maxValue){this.startDate.setMaxValue(d)}var c=new Date(this.startDate.getValue());c.setDate(c.getDate()+364);this.endDate.setMaxValue(c)}},enableHouseAds:function(b){if(!b){b=true}a=b}}}();MB.campaign.submit=function(){return{adGroupLI:null,init:function(){if(ad_groups){Ext.get("form").on("submit",this.checkDates,this);this.adGroupLI=new Ext.Template("<tr>","<td>{ad_group_name}</td>","<td class='{start_class}'>{start_date}</td>","<td class='{end_class}'>{end_date}</td>","</tr>")}},checkDates:function(h){var b=MB.campaign.dates.startDate.getRawValue()+" "+Ext.get("startHour").dom.value+":"+Ext.get("startMin").dom.value;var d=Ext.get("endEnabled").dom.checked;var k=MB.campaign.dates.endDate.getRawValue()+" "+Ext.get("endHour").dom.value+":"+Ext.get("endMin").dom.value;var j="";for(var f=0;f<ad_groups.length;f++){var g=false;var c=false;if(ad_groups[f].start<b){g=true}if(d&&ad_groups[f].end&&ad_groups[f].end>k){c=true}if(g||c){j+=this.adGroupLI.apply({ad_group_name:ad_groups[f].name,start_class:(g?"conflict":""),start_date:ad_groups[f].start,end_class:(c?"conflict":""),end_date:ad_groups[f].end})}}if(j.length>0){h.stopEvent();Ext.get("ad_group_warning_tbody").update(j);var a=new Ext.Window({floating:true,shim:true,draggable:false,header:false,modal:true,resizable:false,width:500,height:300,bodyCfg:{tag:"center"},buttons:[{text:_("OK"),listeners:{click:function(e){e.ownerCt.hide()}}}],title:_("Campaign Date Conflicts"),body:Ext.get("ad_group_warning"),closeAction:"hide"});Ext.get("ad_group_warning").show();a.show();return false}}}}();MB.campaign.sidebar=function(){var a;return{init:function(){if(Ext.get("ad-preview-body")){var b={run:this.checkForUpdates,interval:500,scope:this};new Ext.util.TaskRunner().start(b)}},checkForUpdates:function(){var c="";var e={name:Ext.get("name").getValue()||" ",start_date:MB.campaign.dates.startDate.isValid()?MB.campaign.dates.startDate.getRawValue()+" "+Ext.query("select[name=startHour]")[0].value+":"+Ext.query("select[name=startMin]")[0].value:"",end_date:(MB.campaign.dates.startDate.isValid()&&MB.campaign.dates.endDate.isValid()&&Ext.get("endEnabled").dom.checked)&&MB.campaign.dates.endDate.getRawValue()!=""?MB.campaign.dates.endDate.getRawValue()+" "+Ext.query("select[name=endHour]")[0].value+":"+Ext.query("select[name=endMin]")[0].value:""};if(Ext.get("budget_style_0")){e.budget_style=Ext.get("budget_style_0").dom.checked?_("Standard"):_("Accelerated")}if(Ext.get("budget")){var b=Ext.get("budget").getValue();if(!isNaN(b)){e.budget=b}else{e.budget="0"}}if(Ext.get("io")){e.io_number=Ext.get("io").getValue()}for(var d in e){c+=e[d]}if(a!=c){a=c;MB.campaign.preview.render({campaign:e},Ext.get("ad-preview-body"))}}}}();MB.onReady(function(){MB.campaign.search.init()});