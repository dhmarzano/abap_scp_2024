@EndUserText.label: 'Procesador Viajes'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_C_TRAVEL_7626_P
  provider contract transactional_query
  as projection on zc_r_travel_7626
{
  key TravelId           as TravelId,
      AgencyId           as AgencyId,
      _Agency.Name       as AgencyName,
      CustomerId         as CustomerId,
      _Customer.LastName as CustomerName,
      BeginDate          as BeginDate,
      EndDate            as EndDate,
      BookingFee         as BookingFee,
      TotalPrice         as TotalPrice,
      CurrencyCode       as CurrencyCode,
      OverallStatus      as OverallStatus,
      Description        as Description,
      LastChangedAt      as LastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_C_BOOKING_7626_P,
      _Customer
}
