## TEAM 14 - Invoice
**_Team 14 - Invoice_** is a system for:
* customers that needs assistence online with semplicity
* users than wants easly issue services and invoices for their customers
> Warning: this is a not functioning didactical project and may be used to 
esploring how authors has been develope it using BDD technics.

## Documentation
[Use Case, ER diagram and User Story document](doc/"UserStory.pdf")

[Test coverage document](doc/"TestCoverage.pdf")

[Models diagram](doc/"models_brief.svg")

[Models complete diagram](doc/"models_complete.svg")

[Controllers diagram](doc/"controllers_brief.svg")

[Controllers complete diagram](doc/"controllers_complete.svg")

Diagrams are generated with [RaildRoady](https://github.com/preston/railroady)

## Installing and starting
From terminal, go to invoice directory and execute:
  _bundle install_
  _rails db:migration_
  _rails server_

If port 3000 is blocked by firewall, you can force IPaddress and/or port using:
  _rails server -b 0.0.0.0 -p 8080_

## Using
Root page is for customers usage and is redirect to "New issue page".
Customers can get help inserting their "fiscal code", describing the problem and submitting.
Submission is allowed only for registered clients.
>Sorry, but actually, customers can see and delete others issue entered by them or by others clients.

An enterprise user can manage customers appending to the URL "**_/customers_**".
Services and invoices can be inserted from customers details page.
Issues managing is allowed appending to the URL "**_/issues_**".
Services managing is allowed appending to the URL "**_/services_**".
Invoices managing is allowed appending to the URL "**_/invoices_**".

## Maintenance
If you change models fields, generate db with:
  _rake db:drop db:create db:migrate_

## Run the test suite
Use:
  _rake cucumber_

## System Requrements
**_Team 14 - Invoice_** has been tested with the following Linux, Ruby and Rails versions
##### Ruby and Linux
* 2.3.4 over Ubuntu 14.04.5 LTS
* 2.4.2 over Ubuntu 17.10
##### Rails
* 5.1.4

## License
**_Team 14 - Invoice_** is distribuited under the terms of the GNU General Public License and published by the Free Software Foundation;

## Copyright
Copyright (c) 2017 Anna Giovanelli and Gionni Reffo

## Authors
Team14 is composed by:
* Anna Giovanelli
* Gionni Reffo

And of course, many thanks to the University of Trento teachers (Adolfo Villafiorita e Aaron Ciaghi) that let us aprehend the BDD technics during Advanced Engeneering Software course.