# Progressive Web App with full offline capabilities

This is an example project for how you can build a [Progressive Web Application](https://infrequently.org/2015/06/progressive-apps-escaping-tabs-without-losing-our-soul/) with [Polymer](https://www.polymer-project.org/1.0/), [PouchDB](https://pouchdb.com/) and [Vaadin Elements](https://vaadin.com/elements).

![Progressive Business App on mobile and desktop](https://vaadin.com/documents/10187/11914215/demo-expense_manager/f254d03f-368c-4793-baa9-a46ad1ad6ea1?t=1452512389930)

Data is maintained in a local PouchDB database on the client, which can be synchronized to a [CouchDB](http://couchdb.apache.org/) server. The app remains fully functional regardless of connection status.

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


### 사용 마이크로 서비스들

- 마이크로 서비스 아키텍쳐 제품군
    - [IAM](http://iam.uengine.io:8080) 아이디/비번 "support@iam.co.kr/admin"
    - [API GateWay](http://gw.uengine.io/service-console) 아이디/비번 "support@iam.co.kr/admin"
    - [Billing](http://billing.uengine.io/) 아이디/비번 "sppark2/gosu23546"

- 서비스 리소스
    - [Coucbdb](http://iam.uengine.io:5984/_utils/fauxton) 아이디/비번 "admin/admin"
    
### 설정

- [빌링서비스 설정](https://youtu.be/PL9F7S6sG1A)

- [IAM 통합아이디 설정](https://youtu.be/eobfHgLBGAQ)

- [API Gateway 설정](https://youtu.be/SQYoAHll_ok)

- [Expanse manager 앱 설정](https://youtu.be/izc_c1N3xkw)


