@EndUserText.label: 'Maintain Event table RAP Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_EventTableRap_S
  provider contract transactional_query
  as projection on ZI_EventTableRap_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _EventTableRap : redirected to composition child ZC_EventTableRap
  
}
