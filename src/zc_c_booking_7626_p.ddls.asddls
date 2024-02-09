@EndUserText.label: 'Vista consumo Reserva'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_C_BOOKING_7626_P
  as projection on ZC_I_BOOKING_7626
{
  key TravelId      as TravelId,
  key BookingId     as BookingId,
      BookingDate   as BookingDate,
      CustomerId    as CustomerId,
      CarrierId     as CarrierId,
      _Carrier.Name as CarrierName,
      ConnectionId  as ConnectionId,
      FlightDate    as FlightDate,
      FlightPrice   as FlightPrice,
      CurrencyCode  as CurrencyCode,
      BookingStatus as BookingStatus,
      LastChangeAt  as LastChangeAt,
      /* Associations */
      _Bksuppl : redirected to composition child ZC_C_BKSUPPL_7626_P,
      _Travel  : redirected to parent ZC_C_TRAVEL_7626_P,
      _Customer,
      _Carrier
}
