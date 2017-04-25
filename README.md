# Progressive Web App with full offline capabilities

This is an example project for how you can build a [Progressive Web Application](https://infrequently.org/2015/06/progressive-apps-escaping-tabs-without-losing-our-soul/) with [Polymer](https://www.polymer-project.org/1.0/), [PouchDB](https://pouchdb.com/) and [Vaadin Elements](https://vaadin.com/elements).

![Progressive Business App on mobile and desktop](https://vaadin.com/documents/10187/11914215/demo-expense_manager/f254d03f-368c-4793-baa9-a46ad1ad6ea1?t=1452512389930)

Data is maintained in a local PouchDB database on the client, which can be synchronized to a [CouchDB](http://couchdb.apache.org/) server. The app remains fully functional regardless of connection status.

## How to build

## Run development server
`mvn tomcat:run-war` will run the application locally

## Install web dependencies (optional. already built)
You need polymer-cli installed to build the app `npm install -g polymer-cli`.
Install all bower dependencies with `bower install`.

## Other build targets
You can build the app with `polymer build`. Other options are listed in the [Polymer CLI](https://www.polymer-project.org/1.0/docs/tools/polymer-cli) documentation.

## How to test

1. Login with jyjang/jjy first. It's default setting application. the user doesn't provide any tenant information.
2. Logout with jyjang and Login with jyjang@uengine.org/test next time. Now the user has a tenant information - 'uengine.org'. When you add a new expense editor, there must be some an additional field - 'pet'.
3. Logout with jyjang@uengine.org and Login with jyjang@opence.org/test next time. Now the user has a tenant information - 'opence.org'. in the expense editor, there must be additional fields - 'project name' and 'project due date', and 'validate' button there. You can press the button, and the system log will appear.

## How Multi-tenancy framework works

We have some polymorphic class hierarchy for the Expense class shown here:
```
Expense
  +- uengineExpense
  +- openceExpense
```

The core Expense class is defined as follows:
```
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
```

The uengineExpense class stands for the tenant - 'uengine', the code is:

```
public class uengineExpense extends Expense {

    String pet;
        public String getPet() {
            return pet;
        }
        public void setPet(String pet) {
            this.pet = pet;
        }


}

```


The openceExpense class stands for the tenant - 'opence', the code is:

```
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
```


## Dependent services
### MSA platform services
    - [IAM](http://iam.uengine.io:8080) id/pwd "support@iam.co.kr/admin"
    - [API GateWay](http://gw.uengine.io/service-console) id/pw "support@iam.co.kr/admin"
    - [Billing](http://billing.uengine.io/) id/pw "sppark2/gosu23546"
    - [Coucbdb](http://iam.uengine.io:5984/_utils/fauxton) id/pw "admin/admin"
    
### Configuration

- [Billing Service](https://youtu.be/PL9F7S6sG1A)
- [IAM](https://youtu.be/eobfHgLBGAQ)
- [API Gateway](https://youtu.be/SQYoAHll_ok)
- [Expanse manager App](https://youtu.be/izc_c1N3xkw)

