@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes-Libro'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_CLNT_LIB_7626 as select from ztb_clnts_lib_76  
{
 key id_libro as IdLibro,
 count( distinct id_cliente ) as Ventas
}
group by id_libro
