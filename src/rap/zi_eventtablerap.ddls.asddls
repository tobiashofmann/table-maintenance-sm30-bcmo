@EndUserText.label: 'Event table RAP'
@AccessControl.authorizationCheck: #CHECK
define view entity ZI_EventTableRap
  as select from ZRAP_EVENT
  association to parent ZI_EventTableRap_S as _EventTableRapAll on $projection.SingletonID = _EventTableRapAll.SingletonID
{
  key LOCATIONID as Locationid,
  TITLE as Title,
  DESCRIPTION as Description,
  CAPACITY as Capacity,
  LOCATION as Location,
  BEGIN_DATE as BeginDate,
  END_DATE as EndDate,
  @Semantics.user.createdBy: true
  LOCAL_CREATED_BY as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  LOCAL_CREATED_AT as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  LOCAL_LAST_CHANGED_BY as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  1 as SingletonID,
  _EventTableRapAll
  
}
