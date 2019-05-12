/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     12.05.2019 23:20:59                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('AIRLINEOFSTAGE')
            and   type = 'U')
   drop table AIRLINEOFSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AIRPORTIDSTAGE')
            and   type = 'U')
   drop table AIRPORTIDSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AIRPORTOFSTAGE')
            and   type = 'U')
   drop table AIRPORTOFSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AIRPORTSEQIDSTAGE')
            and   type = 'U')
   drop table AIRPORTSEQIDSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AIRPORTSTAGE')
            and   type = 'U')
   drop table AIRPORTSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CANCELLATIONSTAGE')
            and   type = 'U')
   drop table CANCELLATIONSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CITYMARKETIDSTAGE')
            and   type = 'U')
   drop table CITYMARKETIDSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DAYOFWEEKSTAGE')
            and   type = 'U')
   drop table DAYOFWEEKSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARRBLKSTAGE')
            and   type = 'U')
   drop table DEPARRBLKSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DISTANCEGROUP250STAGE')
            and   type = 'U')
   drop table DISTANCEGROUP250STAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACTFLIGHTSTAGE')
            and   type = 'U')
   drop table FACTFLIGHTSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('IATAREPORTINGAIRLINEIDSTAGE')
            and   type = 'U')
   drop table IATAREPORTINGAIRLINEIDSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONTHSTAGE')
            and   type = 'U')
   drop table MONTHSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ONTIMEDELAYGROUPSSTAGE')
            and   type = 'U')
   drop table ONTIMEDELAYGROUPSSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLANEOFSTAGE')
            and   type = 'U')
   drop table PLANEOFSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QUARTERSTAGE')
            and   type = 'U')
   drop table QUARTERSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPORTINGAIRLINEIDSTAGE')
            and   type = 'U')
   drop table REPORTINGAIRLINEIDSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPORTINGAIRLINESTAGE')
            and   type = 'U')
   drop table REPORTINGAIRLINESTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROUTEOFSTAGE')
            and   type = 'U')
   drop table ROUTEOFSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STATEFIPSSTAGE')
            and   type = 'U')
   drop table STATEFIPSSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('WORLDAREACODESSTAGE')
            and   type = 'U')
   drop table WORLDAREACODESSTAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('YESNORESPSTAGE')
            and   type = 'U')
   drop table YESNORESPSTAGE
go

/*==============================================================*/
/* Table: AIRLINEOFSTAGE                                        */
/*==============================================================*/
create table AIRLINEOFSTAGE (
   AIRLINEID            varchar(1024)        null,
   NAME                 varchar(1024)        null,
   ALIAS                varchar(1024)        null,
   IATA                 varchar(1024)        null,
   ICAO                 varchar(1024)        null,
   CALLSIGN             varchar(1024)        null,
   COUNTRY              varchar(1024)        null,
   ACTIVE               varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AIRPORTIDSTAGE                                        */
/*==============================================================*/
create table AIRPORTIDSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AIRPORTOFSTAGE                                        */
/*==============================================================*/
create table AIRPORTOFSTAGE (
   ATTRIBUTE_62         varchar(1024)        null,
   NAME                 varchar(1024)        null,
   CITY                 varchar(1024)        null,
   COUNTRY              varchar(1024)        null,
   IATA                 varchar(1024)        null,
   ICAO                 varchar(1024)        null,
   LATITUDE             varchar(1024)        null,
   LONGITUDE            varchar(1024)        null,
   ALTITUDE             varchar(1024)        null,
   TIMEZONE             varchar(1024)        null,
   DST                  varchar(1024)        null,
   TZDATABASETIMEZONE   varchar(1024)        null,
   TYPE                 varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AIRPORTSEQIDSTAGE                                     */
/*==============================================================*/
create table AIRPORTSEQIDSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AIRPORTSTAGE                                          */
/*==============================================================*/
create table AIRPORTSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: CANCELLATIONSTAGE                                     */
/*==============================================================*/
create table CANCELLATIONSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: CITYMARKETIDSTAGE                                     */
/*==============================================================*/
create table CITYMARKETIDSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: DAYOFWEEKSTAGE                                        */
/*==============================================================*/
create table DAYOFWEEKSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: DEPARRBLKSTAGE                                        */
/*==============================================================*/
create table DEPARRBLKSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: DISTANCEGROUP250STAGE                                 */
/*==============================================================*/
create table DISTANCEGROUP250STAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: FACTFLIGHTSTAGE                                       */
/*==============================================================*/
create table FACTFLIGHTSTAGE (
   YEAR                 varchar(1024)        null,
   QUARTER              varchar(1024)        null,
   MONTH                varchar(1024)        null,
   DAYOFMONTH           varchar(1024)        null,
   DAYOFWEEK            varchar(1024)        null,
   FLIGHTDATE           varchar(1024)        null,
   REPORTING_AIRLINE    varchar(1024)        null,
   DOT_ID_REPORTING_AIRLINE varchar(1024)        null,
   IATA_CODE_REPORTING_AIRLINE varchar(1024)        null,
   TAIL_NUMBER          varchar(1024)        null,
   FLIGHT_NUMBER_REPORTING_AIRLINE varchar(1024)        null,
   ORIGINAIRPORTID      varchar(1024)        null,
   ORIGINAIRPORTSEQID   varchar(1024)        null,
   ORIGINCITYMARKETID   varchar(1024)        null,
   ORIGIN               varchar(1024)        null,
   ORIGINCITYNAME       varchar(1024)        null,
   ORIGINSTATEFIPS      varchar(1024)        null,
   ORIGINSTATENAME      varchar(1024)        null,
   ORIGINWAC            varchar(1024)        null,
   DESTAIRPORTID        varchar(1024)        null,
   DESTAIRPORTSEQID     varchar(1024)        null,
   DESTCITYMARKETID     varchar(1024)        null,
   DEST                 varchar(1024)        null,
   DESTCITYNAME         varchar(1024)        null,
   DESTSTATEFIPS        varchar(1024)        null,
   DESTSTATENAME        varchar(1024)        null,
   _DESTWAC             varchar(1024)        null,
   CRSDEPTIME           varchar(1024)        null,
   DEPTIME              varchar(1024)        null,
   DEPDELAY             varchar(1024)        null,
   DEPDELAYMINUTES      varchar(1024)        null,
   DEPDEL15             varchar(1024)        null,
   DEPARTUREDELAYGROUPS varchar(1024)        null,
   DEPTIMEBLK           varchar(1024)        null,
   TAXIOUT              varchar(1024)        null,
   WHEELSOFF            varchar(1024)        null,
   WHEELSON             varchar(1024)        null,
   _TAXIIN              varchar(1024)        null,
   CRSARRTIME           varchar(1024)        null,
   _ARRTIME             varchar(1024)        null,
   ARRDELAY             varchar(1024)        null,
   ARRDELAYMINUTES      varchar(1024)        null,
   _ARRDEL15            varchar(1024)        null,
   ARRIVALDELAYGROUPS   varchar(1024)        null,
   ARRTIMEBLK           varchar(1024)        null,
   CANCELLED            varchar(1024)        null,
   CANCELLATIONCODE     varchar(1024)        null,
   DIVERTED             varchar(1024)        null,
   CRSELAPSEDTIME       varchar(1024)        null,
   ACTUALELAPSEDTIME    varchar(1024)        null,
   AIRTIME              varchar(1024)        null,
   FLIGHTS              varchar(1024)        null,
   DISTANCE             varchar(1024)        null,
   DISTANCEGROUP        varchar(1024)        null,
   CARRIERDELAY         varchar(1024)        null,
   WEATHERDELAY         varchar(1024)        null,
   NASDELAY             varchar(1024)        null,
   SECURITYDELAY        varchar(1024)        null,
   LATEAIRCRAFTDELAY    varchar(1024)        null
)
go

/*==============================================================*/
/* Table: IATAREPORTINGAIRLINEIDSTAGE                           */
/*==============================================================*/
create table IATAREPORTINGAIRLINEIDSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: MONTHSTAGE                                            */
/*==============================================================*/
create table MONTHSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: ONTIMEDELAYGROUPSSTAGE                                */
/*==============================================================*/
create table ONTIMEDELAYGROUPSSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: PLANEOFSTAGE                                          */
/*==============================================================*/
create table PLANEOFSTAGE (
   NAME                 varchar(1024)        null,
   IATACODE             varchar(1024)        null,
   ICAOCODE             varchar(1024)        null
)
go

/*==============================================================*/
/* Table: QUARTERSTAGE                                          */
/*==============================================================*/
create table QUARTERSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: REPORTINGAIRLINEIDSTAGE                               */
/*==============================================================*/
create table REPORTINGAIRLINEIDSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: REPORTINGAIRLINESTAGE                                 */
/*==============================================================*/
create table REPORTINGAIRLINESTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: ROUTEOFSTAGE                                          */
/*==============================================================*/
create table ROUTEOFSTAGE (
   AIRLINE              varchar(1024)        null,
   AIRLINEID            varchar(1024)        null,
   SOURCEAIRPORT        varchar(1024)        null,
   SOURCEAIRPORTID      varchar(1024)        null,
   DESTINATIONAIRPORT   varchar(1024)        null,
   DESTINATIONAIRPORTID varchar(1024)        null,
   CODESHARE            varchar(1024)        null,
   STOPS                varchar(1024)        null,
   EQUIPMENT            varchar(1024)        null
)
go

/*==============================================================*/
/* Table: STATEFIPSSTAGE                                        */
/*==============================================================*/
create table STATEFIPSSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: WORLDAREACODESSTAGE                                   */
/*==============================================================*/
create table WORLDAREACODESSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: YESNORESPSTAGE                                        */
/*==============================================================*/
create table YESNORESPSTAGE (
   CODE                 varchar(1024)        null,
   DESCRIPTION          varchar(1024)        null
)
go

