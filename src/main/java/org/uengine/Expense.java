package org.uengine;

import org.metaworks.annotation.Face;
import org.metaworks.annotation.Order;
import org.metaworks.annotation.Range;

import java.util.Date;

/**
 * Created by uengine on 2017. 4. 22..
 */
public class Expense {

    String comment;
    Date date;
    String merchant;
    long total;
    String status;

    @Face(displayName="설명")
    @Order(10)
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }

    @Face(displayName="입력일")
    @Order(20)
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    @Order(30)
    public String getMerchant() {
        return merchant;
    }
    public void setMerchant(String merchant) {
        this.merchant = merchant;
    }

    @Order(40)
    public long getTotal() {
        return total;
    }
    public void setTotal(long total) {
        this.total = total;
    }

    @Range(options={"승인","반려","보류"}, values={"1", "2", "3"})
    @Order(50)
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
}
