@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista consumo Reserva'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_I_BOOKING_7626
  as select from ztb_booking_7626 as Booking
  association        to parent zc_r_travel_7626 as _Travel     on  $projection.TravelId = _Travel.TravelId
  composition [0..*] of zc_i_bksuppl_7626       as _Bksuppl
  association [1..1] to /DMO/I_Customer         as _Customer   on  $projection.CustomerId = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier          as _Carrier    on  $projection.CarrierId = _Carrier.AirlineID
  association [1..1] to /DMO/I_Connection       as _Connection on  $projection.CarrierId    = _Connection.AirlineID
                                                               and $projection.ConnectionId = _Connection.ConnectionID
{
  key travel_id      as TravelId,
  key booking_id     as BookingId,
      booking_date   as BookingDate,
      customer_id    as CustomerId,
      carrier_id     as CarrierId,
      connection_id  as ConnectionId,
      flight_date    as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price   as FlightPrice,
      currency_code  as CurrencyCode,
      booking_status as BookingStatus,
      @Semantics.systemDateTime.lastChangedAt: true
      last_change_at as LastChangeAt,
      _Travel,
      _Bksuppl,
      _Customer,
      _Carrier,
      _Connection
}
