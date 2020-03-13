BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0015400000ToxysAAB','Food Bank WI','');
INSERT INTO "Account" VALUES('0015400000ToxyYAAR','Food Bank MN','');
CREATE TABLE "Delivery_Items__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Items__c" VALUES('a0054000003gse4AAA','Refrigerated','a0154000004mLNnAAM');
INSERT INTO "Delivery_Items__c" VALUES('a0054000003gse5AAA','Refrigerated','a0154000004mLNyAAM');
INSERT INTO "Delivery_Items__c" VALUES('a0054000003gsdzAAA','Non-refrigerated','a0154000004mLNnAAM');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a0154000004mLNnAAM','2020-04-01T19:00:00.000Z','Requested','0015400000ToxyYAAR');
INSERT INTO "Delivery__c" VALUES('a0154000004mLNyAAM','2020-03-12T19:00:00.000Z','Completed','0015400000ToxysAAB');
COMMIT;
