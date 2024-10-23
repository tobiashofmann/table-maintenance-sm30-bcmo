@EndUserText.label: 'Event table RAP Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_EventTableRap_S
  as select from I_Language
    left outer join ZRAP_EVENT on 0 = 0
  composition [0..*] of ZI_EventTableRap as _EventTableRap
{
  key 1 as SingletonID,
  _EventTableRap,
  max( ZRAP_EVENT.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
