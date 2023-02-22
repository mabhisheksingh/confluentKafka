-- create database `KAFKA`; 
 -- show databases;

use kafka;


DROP TABLE IF EXISTS WHO_COVID_DATA;
CREATE TABLE `WHO_COVID_DATA` (
	`Name` VARCHAR(255) NOT NULL COMMENT 'Name of country',
	`WHO Region` VARCHAR(255) DEFAULT '' COMMENT 'Region in world',
	`Cases - cumulative total` BIGINT(255) COMMENT 'Cases - cumulative total',
	`Cases - cumulative total per 100000 population` BIGINT(255) COMMENT 'Cases - cumulative total per 100000 population',
	`Cases - newly reported in last 7 days` BIGINT(255) DEFAULT '0',
	`Cases - newly reported in last 7 days per 100000 population` BIGINT(255) DEFAULT '0',
	`Cases - newly reported in last 24 hours` BIGINT(255) DEFAULT '0',
	`Deaths - cumulative total` BIGINT(255) DEFAULT '0',
	`Deaths - cumulative total per 100000 population` BIGINT(255) DEFAULT '0',
	`Deaths - newly reported in last 7 days` BIGINT(255) DEFAULT '0',
	`Deaths - newly reported in last 7 days per 100000 population` BIGINT(255) DEFAULT '0',
	`Deaths - newly reported in last 24 hours` BIGINT(255) DEFAULT '0',
	PRIMARY KEY (`Name`)
);
-- use kafka;
DROP TABLE IF EXISTS WHO_COVID19_DATA;
CREATE TABLE `WHO_COVID19_DATA` (
	`Date_reported` VARCHAR(255) NOT NULL COMMENT 'Death',
	`Country_code` VARCHAR(10) DEFAULT '' COMMENT 'Country code',
	`Country` VARCHAR(50) DEFAULT '' COMMENT 'Country',
	`WHO_region`VARCHAR(50) DEFAULT '' COMMENT 'WHO_region',
	`New_cases` BIGINT(255) DEFAULT '0',
	`Cumulative_cases` BIGINT(255) DEFAULT '0',
	`New_deaths` BIGINT(255) DEFAULT '0',
	`Cumulative_deaths` BIGINT(255) DEFAULT '0',
    PRIMARY KEY (`Date_reported`,Country)
);
show tables;

select * from who_covid_data;

