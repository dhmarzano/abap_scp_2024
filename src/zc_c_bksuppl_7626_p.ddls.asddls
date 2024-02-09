@EndUserText.label: 'V. consumo Suplemento Reserva Procesador'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_C_BKSUPPL_7626_P
  as projection on zc_i_bksuppl_7626
{
  key TravelId                    as TravelId,
  key BookingId                   as BookingId,
  key BookingSupplementId         as BookingSupplementID,
      SupplementId                as SupplementId,
      _SupplementText.Description as SupplementDescription : localized,
      Price                       as Price,
      Currency                    as Currency,
      LastChangedAt               as LastChangedAt,
      /* Associations */
      _Booking : redirected to parent ZC_C_BOOKING_7626_P,
      _SupplementText,
      _Travel  : redirected to ZC_C_TRAVEL_7626_P
}
