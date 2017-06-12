package org.uengine;

import java.util.Date;

/**
 * Created by uengine on 2017. 4. 24..
 */
public class company1Expense extends Expense {

    String ext1;

    Date importantDate;

    public String getExt1() {
        return ext1;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public Date getImportantDate() {
        return importantDate;
    }

    public void setImportantDate(Date importantDate) {
        this.importantDate = importantDate;
    }
}
