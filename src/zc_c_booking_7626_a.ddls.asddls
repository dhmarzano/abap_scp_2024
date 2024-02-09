@EndUserText.label: 'Aprobador Reserva'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_C_Booking_7626_a
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
      _Bksuppl,
      _Travel : redirected to parent ZC_C_TRAVEL_7626_A,
      _Customer,
      _Carrier
}
