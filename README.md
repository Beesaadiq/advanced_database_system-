SADIQ ISHOLA - MIT 8103 ADVANCED DATABASE SYSTEMS
GREEN BASKET SHOP DATABASE PORTFOLIO

ABOUT THIS SUBMISSION
This folder presents my database coursework using Green Basket Shop, a
small fictional food shop in Ibadan, as the case study. The work follows
customer records, product stock and sales from database design through
queries, transaction control, JSON data and cloud planning. SQL examples
are written in Microsoft SQL Server's Transact-SQL (T-SQL).

WHAT IS IN THE FOLDER
portfolio-1-database-design/
  Scripts 01-05 set up GreenBasketDB and create the Customers, Products,
  Orders and OrderItems tables. They include sample data and constraints.

portfolio-2-query-optimisation/
  Scripts 07 and 08A-08D cover sales reports, a ProductName index, a
  before-and-after query comparison and removal of practice rows.

portfolio-3-transactions-concurrency/
  Scripts 09A-09F demonstrate saving a sale, cancelling a change and
  handling two sessions that try to read and update the same price.

portfolio-4-nosql/
  Scripts 06 and 10 store optional product details as JSON and query or
  temporarily update those details with T-SQL. This is a JSON document
  example in SQL Server, not a separate NoSQL database installation.

portfolio-5-distributed-cloud/
  The topic is covered as a design discussion, not a live deployment.
  See documentation/11_Distributed_and_Cloud_Discussion.* and the
  additional Discussion.txt under screenshots/portfolio-5-distributed-cloud/.

documentation/
  Numbered Word (.docx) and PDF (.pdf) guides explain the exercises,
  expected results and underlying database ideas. Final_Documentation..docx
  is an earlier submission draft with blank student details.

screenshots/
  PNG evidence is arranged by portfolio. The cloud folder contains a
  written discussion rather than screenshots of cloud resources.

SADIQ_ISHOLA_Final_Documentation.docx
  The main student-specific summary, including the case study, portfolio
  reflections and references. Review it against the draft in documentation/
  because the two versions differ in their completion statements.

HOW TO REVIEW OR RUN THE SQL
Use SQL Server Management Studio (SSMS) with Microsoft SQL Server 2016
or newer for the JSON functions. Work on a test instance, not a live shop
system. Open the .sql scripts in SSMS and follow this order:

1. Run Portfolio 1 scripts 01, 02, 03, 04 and 05, in sequence.
2. Create ProductDocuments with Portfolio 4 script 06.
3. Run Portfolio 2 script 08A for the sales queries, then 08B to collect
   the BEFORE index measurement. Run 07 to create the name index, 08C
   for the AFTER measurement, and 08D to delete practice products.
4. Run Portfolio 3 script 09A once for the sample sale; use 09B for the
   rollback example. For the locking test, run 09C in query window A,
   09D in window B, 09E back in the same window A, then 09F after B
   finishes to restore the original price.
5. Run Portfolio 4 script 10 to explore the stored JSON values.
6. Read the Portfolio 5 cloud discussion for the proposed design.

PLEASE NOTE
The scripts insert fixed sample IDs and are meant to be run in order.
Running the setup or sale scripts repeatedly may cause duplicate-key
errors. The index comparison must be measured in SSMS rather than assumed
to be faster. The cloud section proposes replication and sharding ideas;
it does not prove that cloud services were created or tested. 
