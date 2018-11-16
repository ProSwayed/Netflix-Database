/*
     Cant enforce 1 side
          MANAGES
          REGISTERS
          CONTAINS
          HAS
     Cant enforce M side
          TYPE_OF
          ACTS_IN
          DIRECTED_BY
*/

drop database if exists netflix;
create database netflix;
use netflix;

create table USER_ACCOUNT(
     id int unsigned primary key auto_increment,
     Email varchar( 254 ) not null unique,
     FirstName varchar( 50 ) not null,
     LastName varchar( 50 ) not null,
     Phone varchar( 50 ),
     StreetAddress varchar( 255 ),
     City varchar( 255 ),
     State varchar( 255 ),
     Zip varchar( 50 ),
     Salt char( 10 ) not null,
     Hash char( 40 ) not null
);
create table PROFILE(
     id int unsigned primary key auto_increment,
     Name varchar( 255 ) not null,
     AcctID int unsigned not null,
     unique( Name, AcctID ),
     foreign key( AcctID ) references USER_ACCOUNT( id ) on update cascade on delete cascade -- MANAGES
);

create table PERSON(
     id int unsigned primary key auto_increment,
     FirstName varchar( 25 ) not null,
     LastName varchar( 25 ) not null
     Sex char( 1 )
);

create table SUBSCRIPTION_TYPE(
     id int unsigned primary key auto_increment,
     Name varchar( 255 ) not null unique,
     Screens tinyint unsigned default 0,
     Price decimal( 7, 2 ) not null,
     Description varchar( 255 ) not null
);
create table PAYMENT_METHOD(
     id int unsigned primary key auto_increment,
     CreditCardNumber bigint unsigned not null,
     CVV smallint unsigned not null,
     ExpirationDate date not null,
     AcctID int unsigned not null,
     unique( AcctID, CreditCardNumber ),
     foreign key( AcctID ) references USER_ACCOUNT( id ) on update cascade on delete cascade -- REGISTERS
);
create table INVOICE(
     id int unsigned primary key auto_increment,
     InvoiceID int unsigned not null unique,
     ServiceStart timestamp not null default current_timestamp,
     AcctID int unsigned not null,
     SubID int unsigned not null,
     PaymentID int unsigned not null,
     PurchaseAmount decimal( 7, 2 ) not null,
     foreign key( AcctID ) references USER_ACCOUNT( id ) on update cascade on delete cascade, -- PURCHASES
     foreign key( SubID ) references SUBSCRIPTION_TYPE( id ) on update cascade on delete cascade, -- PURCHASES
     foreign key( PaymentID ) references PAYMENT_METHOD( id ) on update cascade on delete cascade -- PURCHASES
);

create table MOVIE(
     id int unsigned primary key auto_increment,
     Name varchar( 255 ) not null,
     YearReleased int unsigned not null default 0,
     Runtime time not null default '000:00:00',
     Description varchar( 255 ) not null,
     unique( Name, YearReleased )
);

create table GENRE(
     id int unsigned primary key auto_increment,
     Genre varchar( 255 ) not null unique
);
create table TYPE_OF(
     MovieID int unsigned not null,
     GenreID int unsigned not null,
     primary key( MovieID, GenreID ),
     foreign key( MovieID ) references MOVIE( id ) on update cascade on delete cascade, -- TYPE_OF
     foreign key( GenreID ) references GENRE( id ) on update cascade on delete cascade -- TYPE_OF
);

create table DIRECTED_BY_MOV(
     MovieID int unsigned not null,
     PersonID int unsigned not null,
     primary key( MovieID, PersonID ),
     foreign key( MovieID ) references MOVIE( id ) on update cascade on delete cascade, -- DIRECTED_BY (MOV)
     foreign key( PersonID ) references PERSON( id ) on update cascade on delete cascade -- DIRECTED_BY (MOV)
);
create table ACTS_IN_MOV(
     MovieID int unsigned not null,
     PersonID int unsigned not null,
     primary key( MovieID, PersonID ),
     foreign key( MovieID ) references MOVIE( id ) on update cascade on delete cascade, -- ACTS_IN (MOV)
     foreign key( PersonID ) references PERSON( id ) on update cascade on delete cascade -- ACTS_IN (MOV)
);
create table VIEWS_MOVIE(
     MovieID int unsigned not null,
     ProfileID int unsigned not null,
     PercentComplete decimal( 5, 2 ) not null default 0,
     primary key( MovieID, PersonID ),
     foreign key( MovieID ) references MOVIE( id ) on update cascade on delete cascade, -- VIEWS (MOV)
     foreign key( ProfileID ) references PROFILE( id ) on update cascade on delete cascade -- VIEWS (MOV)
);

create table TV_SHOW(
     id int unsigned primary key auto_increment.
     Name varchar( 255 ) not null,
     YearReleased int unsigned not null default 0,
     Description varchar( 255 ) not null,
     unique( Name, YearReleased )
);
create table SEASON(
     id int unsigned primary key auto_increment,
     Name varchar( 255 ) not null,
     Number tinyint unsigned not null,
     TVShowID int unsigned not null,
     unique( TVShowID, Number ),
     foreign key( TVShowID ) references TV_SHOW( id ) on update cascade on delete cascade -- CONTAINS
);
create table EPISODE(
     id int unsigned primary key auto_increment,
     Description varchar( 255 ) not null,
     Number tinyint unsigned not null,
     Runtime time not null default '000:00:00',
     Name varchar( 255 ) not null,
     SeasonID int unsigned not null,
     unique( SeasonID, Number ),
     foreign key( SeasonID ) references SEASON( id ) on update cascade on delete cascade -- HAS
);

create table DIRECTED_BY_EP(
     EpisodeID int unsigned not null,
     PersonID int unsigned not null,
     primary key( EpisodeID, PersonID ),
     foreign key( EpisodeID ) references EPISODE( id ) on update cascade on delete cascade, -- DIRECTED_BY (EP)
     foreign key( PersonID ) references PERSON( id ) on update cascade on delete cascade -- DIRECTED_BY (EP)
);
create table ACTS_IN_EP(
     EpisodeID int unsigned not null,
     PersonID int unsigned not null,
     primary key( EpisodeID, PersonID ),
     foreign key( EpisodeID ) references EPISODE( id ) on update cascade on delete cascade, -- ACTS_IN (EP)
     foreign key( PersonID ) references PERSON( id ) on update cascade on delete cascade -- ACTS_IN (EP)
);
create table VIEWS_EP(
     EpisodeID int unsigned not null,
     ProfileID int unsigned not null,
     PercentComplete decimal( 5, 2 ) not null default 0,
     primary key( EpisodeID, PersonID ),
     foreign key( EpisodeID ) references EPISODE( id ) on update cascade on delete cascade, -- VIEWS (EP)
     foreign key( ProfileID ) references PROFILE( id ) on update cascade on delete cascade -- VIEWS (EP)
);
