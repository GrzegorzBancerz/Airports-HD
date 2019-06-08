/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     08.06.2019 18:46:23                          */
/*==============================================================*/


/*==============================================================*/
/* Table: DimAirline                                            */
/*==============================================================*/
create table DimAirline (
   AirlineID            int                  not null,
   AirlineName          varchar(255)         null,
   AirlineAlias         varchar(255)         null,
   AirlineIATA          varchar(255)         null,
   AirlineICAO          varchar(255)         null,
   AirlineCountry       varchar(255)         null,
   AirlineActive        varchar(255)         null,
   constraint PK_DIMAIRLINE primary key (AirlineID)
)
go

/*==============================================================*/
/* Table: DimAirport                                            */
/*==============================================================*/
create table DimAirport (
   AirportID            int                  not null,
   AirportName          varchar(255)         null,
   AirportCity          varchar(255)         null,
   AirportCountry       varchar(255)         null,
   AirportIATA          varchar(255)         null,
   AirportICAO          varchar(255)         null,
   AirportLatitude      numeric(23,20)       null,
   AirportLongtitude    numeric(23,20)       null,
   AirportAltitude      int                  null,
   AirportTimezone      numeric(4,2)         null,
   AirportType          varchar(255)         null,
   AirportStateName     varchar(255)         null,
   constraint PK_DIMAIRPORT primary key (AirportID)
)
go

/*==============================================================*/
/* Table: DimDate                                               */
/*==============================================================*/
create table DimDate (
   DateID               int                  not null,
   Date                 date                 null,
   Year                 int                  null,
   Month                int                  null,
   MonthName            varchar(255)         null,
   DayOfMonth           int                  null,
   DayOfWeek            int                  null,
   DayOfWeekName        varchar(255)         null,
   Quarter              int                  null,
   QuarterName          varchar(255)         null,
   FirstDayOfMonth      date                 null,
   LastDayOfMonth       date                 null,
   FirstDayOfQuarter    date                 null,
   LastDayOfQuarter     date                 null,
   constraint PK_DIMDATE primary key (DateID)
)
go

/*==============================================================*/
/* Table: DimDelayGroups                                        */
/*==============================================================*/
create table DimDelayGroups (
   DelayGroupsID        int                  not null,
   DelayGroupsCode      int                  null,
   DelayGroupsDescription varchar(255)         null,
   constraint PK_DIMDELAYGROUPS primary key (DelayGroupsID)
)
go

/*==============================================================*/
/* Table: DimDepartureArrivalTimeIntervals                      */
/*==============================================================*/
create table DimDepartureArrivalTimeIntervals (
   DepArrTimeIntervalsID int                  not null,
   DepArrTimeIntervalsCode varchar(10)          null,
   DepArrTimeIntervalsDescription varchar(255)         null,
   constraint PK_DIMDEPARTUREARRIVALTIMEINTE primary key (DepArrTimeIntervalsID)
)
go

/*==============================================================*/
/* Table: DimDistanceRange                                      */
/*==============================================================*/
create table DimDistanceRange (
   DistanceRangeID      int                  not null,
   DistanceRangeCode    int                  null,
   DistanceRangeDescription varchar(255)         null,
   constraint PK_DIMDISTANCERANGE primary key (DistanceRangeID)
)
go

/*==============================================================*/
/* Table: DimFlightStatus                                       */
/*==============================================================*/
create table DimFlightStatus (
   FlightStatusID       int                  not null,
   FlightStatusCode     varchar(255)         null,
   FlightStatusDescription varchar(255)         null,
   constraint PK_DIMFLIGHTSTATUS primary key (FlightStatusID)
)
go

/*==============================================================*/
/* Table: DimTime                                               */
/*==============================================================*/
create table DimTime (
   TimeID               int                  not null,
   Hour                 int                  null,
   Minute               int                  null,
   constraint PK_DIMTIME primary key (TimeID)
)
go

/*==============================================================*/
/* Table: FactFlight                                            */
/*==============================================================*/
create table FactFlight (
   FlightID             int                  not null,
   FlightDateID         int                  null,
   WheelsOnID           int                  null,
   WheelsOffID          int                  null,
   ScheduledArrivalTimeID int                  null,
   ScheduledDepartureTimeID int                  null,
   ActualDepartureTimeID int                  null,
   ActualArrivalTimeID  int                  null,
   OriginAirportID      int                  null,
   DestinationAirportID int                  null,
   FlightStatusID       int                  null,
   AirlineID            int                  null,
   DepartureTimeIntervalID int                  null,
   ArrivalTimeIntervalID int                  null,
   DistanceRangeID      int                  null,
   ArrivalDelayGroupsID int                  null,
   DepartureDelayGroupsID int                  null,
   DepartureDelay       int                  null,
   ArrivalDelay         int                  null,
   TaxiOut              int                  null,
   TaxiIn               int                  null,
   Cancelled            bit                  null,
   Diverted             bit                  null,
   ScheduledElapsedTime int                  null,
   ActualElapsedTime    int                  null,
   AirTime              int                  null,
   Distance             int                  null,
   CarrierDelay         int                  null,
   WeatherDelay         int                  null,
   NasDelay             int                  null,
   SecurityDelay        int                  null,
   LateAircraftDelay    int                  null,
   DepartuteDelay15OrMore bit                  null,
   ArrivalDelay15OrMore bit                  null,
   constraint PK_FACTFLIGHT primary key (FlightID)
)
go

/*==============================================================*/
/* Index: CRSDepartureTime_FK                                   */
/*==============================================================*/




create nonclustered index CRSDepartureTime_FK on FactFlight (WheelsOnID ASC)
go

/*==============================================================*/
/* Index: ActualDepartureTime_FK                                */
/*==============================================================*/




create nonclustered index ActualDepartureTime_FK on FactFlight (ActualDepartureTimeID ASC)
go

/*==============================================================*/
/* Index: CRSArrivalTime_FK                                     */
/*==============================================================*/




create nonclustered index CRSArrivalTime_FK on FactFlight (ScheduledArrivalTimeID ASC)
go

/*==============================================================*/
/* Index: ActualArrivalTime_FK                                  */
/*==============================================================*/




create nonclustered index ActualArrivalTime_FK on FactFlight (ActualArrivalTimeID ASC)
go

/*==============================================================*/
/* Index: WheelsOff_FK                                          */
/*==============================================================*/




create nonclustered index WheelsOff_FK on FactFlight (ScheduledDepartureTimeID ASC)
go

/*==============================================================*/
/* Index: WheelsOn_FK                                           */
/*==============================================================*/




create nonclustered index WheelsOn_FK on FactFlight (WheelsOffID ASC)
go

/*==============================================================*/
/* Index: FlightDate_FK                                         */
/*==============================================================*/




create nonclustered index FlightDate_FK on FactFlight (FlightDateID ASC)
go

/*==============================================================*/
/* Index: Airline_FK                                            */
/*==============================================================*/




create nonclustered index Airline_FK on FactFlight (AirlineID ASC)
go

/*==============================================================*/
/* Index: DistanceGroup_FK                                      */
/*==============================================================*/




create nonclustered index DistanceGroup_FK on FactFlight (DistanceRangeID ASC)
go

/*==============================================================*/
/* Index: ArrivalDelayGroups_FK                                 */
/*==============================================================*/




create nonclustered index ArrivalDelayGroups_FK on FactFlight (ArrivalDelayGroupsID ASC)
go

/*==============================================================*/
/* Index: DepartureDelayGroups_FK                               */
/*==============================================================*/




create nonclustered index DepartureDelayGroups_FK on FactFlight (DepartureDelayGroupsID ASC)
go

/*==============================================================*/
/* Index: CancellationCode_FK                                   */
/*==============================================================*/




create nonclustered index CancellationCode_FK on FactFlight (FlightStatusID ASC)
go

/*==============================================================*/
/* Index: OriginAirportID_FK                                    */
/*==============================================================*/




create nonclustered index OriginAirportID_FK on FactFlight (DestinationAirportID ASC)
go

/*==============================================================*/
/* Index: DestinationAirportID_FK                               */
/*==============================================================*/




create nonclustered index DestinationAirportID_FK on FactFlight (OriginAirportID ASC)
go

/*==============================================================*/
/* Index: DepBlk_FK                                             */
/*==============================================================*/




create nonclustered index DepBlk_FK on FactFlight (ArrivalTimeIntervalID ASC)
go

/*==============================================================*/
/* Index: ArrBlk_FK                                             */
/*==============================================================*/




create nonclustered index ArrBlk_FK on FactFlight (DepartureTimeIntervalID ASC)
go

alter table FactFlight
   add constraint FK_FACTFLIG_ACTUALARR_DIMTIME foreign key (ActualArrivalTimeID)
      references DimTime (TimeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_ACTUALDEP_DIMTIME foreign key (ActualDepartureTimeID)
      references DimTime (TimeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_AIRLINE_DIMAIRLI foreign key (AirlineID)
      references DimAirline (AirlineID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_ARRBLK_DIMDEPAR foreign key (DepartureTimeIntervalID)
      references DimDepartureArrivalTimeIntervals (DepArrTimeIntervalsID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_ARRIVALDE_DIMDELAY foreign key (ArrivalDelayGroupsID)
      references DimDelayGroups (DelayGroupsID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_DEPBLK_DIMDEPAR foreign key (ArrivalTimeIntervalID)
      references DimDepartureArrivalTimeIntervals (DepArrTimeIntervalsID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_DEPARTURE_DIMDELAY foreign key (DepartureDelayGroupsID)
      references DimDelayGroups (DelayGroupsID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_DESTINATI_DIMAIRPO foreign key (OriginAirportID)
      references DimAirport (AirportID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_DISTANCEG_DIMDISTA foreign key (DistanceRangeID)
      references DimDistanceRange (DistanceRangeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_FLIGHTDAT_DIMDATE foreign key (FlightDateID)
      references DimDate (DateID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_ORIGINAIR_DIMAIRPO foreign key (DestinationAirportID)
      references DimAirport (AirportID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_SCHEDULED_DIMTIME_ARR foreign key (ScheduledArrivalTimeID)
      references DimTime (TimeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_SCHEDULED_DIMTIME_DEP foreign key (WheelsOnID)
      references DimTime (TimeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_STATUSCOD_DIMFLIGH foreign key (FlightStatusID)
      references DimFlightStatus (FlightStatusID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_WHEELSOFF_DIMTIME foreign key (ScheduledDepartureTimeID)
      references DimTime (TimeID)
go

alter table FactFlight
   add constraint FK_FACTFLIG_WHEELSON_DIMTIME foreign key (WheelsOffID)
      references DimTime (TimeID)
go

