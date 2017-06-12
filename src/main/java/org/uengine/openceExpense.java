package org.uengine;

import org.metaworks.annotation.Order;
import org.metaworks.annotation.ServiceMethod;

import java.util.Date;

/**
 * Created by uengine on 2017. 4. 22..
 */
public class openceExpense extends Expense {

    String projectName;
        public String getProjectName() {
            return projectName;
        }
        public void setProjectName(String projectName) {
            this.projectName = projectName;
        }


    Date projectFinishDate;
        public Date getProjectFinishDate() {
            return projectFinishDate;
        }
        public void setProjectFinishDate(Date projectFinishDate) {
            this.projectFinishDate = projectFinishDate;
        }

    @ServiceMethod(callByContent=true)
    public void validate(){
        //if(getDate().compareTo(getProjectFinishDate()) > 0){
            setProjectName("[INVALID]" + getProjectName());
        //}
    }

}
