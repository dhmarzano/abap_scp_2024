@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_CATEGORIAS_7626 as select from ztb_catego_7626 as Categoria
{
key Categoria.bi_categ as Categoria,
    Categoria.descripcion as Descripcion
}
