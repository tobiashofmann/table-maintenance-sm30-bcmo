@EndUserText.label: 'Maintain Event table RAP'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZC_EventTableRap
  as projection on ZI_EventTableRap
{
  key Locationid,
  Title,
  Description,
  Capacity,
  Location,
  BeginDate,
  EndDate,
  LocalCreatedBy,
  LocalCreatedAt,
  @Consumption.hidden: true
  LocalLastChangedBy,
  @Consumption.hidden: true
  LocalLastChangedAt,
  LastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _EventTableRapAll : redirected to parent ZC_EventTableRap_S
  
}
