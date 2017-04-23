# Progressive Web App with full offline capabilities

This is an example project for how you can build a [Progressive Web Application](https://infrequently.org/2015/06/progressive-apps-escaping-tabs-without-losing-our-soul/) with [Polymer](https://www.polymer-project.org/1.0/), [PouchDB](https://pouchdb.com/) and [Vaadin Elements](https://vaadin.com/elements).

![Progressive Business App on mobile and desktop](https://vaadin.com/documents/10187/11914215/demo-expense_manager/f254d03f-368c-4793-baa9-a46ad1ad6ea1?t=1452512389930)


The application uses a [ServiceWorker](https://github.com/slightlyoff/ServiceWorker/blob/master/explainer.md) to cache the [Application Shell](https://developers.google.com/web/updates/2015/11/app-shell?hl=en). A [WebApp Manifest file](https://developer.mozilla.org/en-US/docs/Web/Manifest) ensures that the browser identifies our app as a Progressive Web Application and offers the user to install the application through an install banner.

Data is maintained in a local PouchDB database on the client, which can be synchronized to a [CouchDB](http://couchdb.apache.org/) server. The app remains fully functional regardless of connection status.

## Live Demo
[Try the live demo of the Progressive Web Application](http://demo.vaadin.com/expense-manager).

## Running locally

### Install local CouchDB (optional)
If you want to work on the same data in several browsers, you can install a local CouchDB. Just follow the instructions [here](https://pouchdb.com/guides/setup-couchdb.html).

Once installed, make sure that the `location` attribute is correct on the `<pouch-db>` element in `overview-page.html`. **Note** If you do not use a database to sync with, omit the `location` attribute.

## Install dependencies
You need polymer-cli installed to build the app `npm install -g polymer-cli`.
Install all bower dependencies with `bower install`.

## Run development server
`polymer serve` will run the application locally

## Other build targets
You can build the app with `polymer build`. Other options are listed in the [Polymer CLI](https://www.polymer-project.org/1.0/docs/tools/polymer-cli) documentation.


## Note
The demo uses [Vaadin Charts](https://vaadin.com/charts), which will ask for a license. You can close the window to try out the app without a license.


## 마이크로 서비스 아키텍쳐 연동 데모설정

### 연동 서버 리스트

- 마이크로 서비스 아키텍쳐 제품군
    - [IAM](http://iam.uengine.io:8080) support@iam.co.kr / admin
    - [API GateWay](http://gw.uengine.io/service-console) support@iam.co.kr / admin
    - [Billing](http://billing.uengine.io/) sppark2 / gosu23546

- 서비스 리소스
    - [Coucbdb](http://iam.uengine.io:5984/_utils/fauxton) admin / admin
    
### 연동 동영상

- [빌링서비스 설정](https://youtu.be/PL9F7S6sG1A)

- [IAM 통합아이디 설정](https://youtu.be/eobfHgLBGAQ)

- [API Gateway 설정](https://youtu.be/SQYoAHll_ok)

- [Expanse manager 앱 설정](https://youtu.be/izc_c1N3xkw)


