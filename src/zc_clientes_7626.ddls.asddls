@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@UI.headerInfo: { typeName: 'Libro',
                  typeNamePlural: 'Libros',
                  title:        {type : #STANDARD,
                                 value: 'NombreCompleto'},
                  description:  {type : #STANDARD,
                                 value: 'IdCliente'},
                  imageUrl: 'Imagen'}
                  
define view entity ZC_CLIENTES_7626 as select from ztb_clientes_762 as Clientes
inner join ztb_clnts_lib_76 as Clnts 
on Clnts.id_cliente = Clientes.id_cliente
{
key  Clnts.id_libro      as IdLIbro,
key  Clientes.id_cliente as IdCliente,
key  Clientes.tipo_acceso as Acceso,
     Clientes.nombre     as Nombre,
     Clientes.apellidos  as Apellido,
     Clientes.email      as Email,
     Clientes.url        as Imagen,
     concat_with_space(Clientes.nombre, Clientes.apellidos, 1) as NombreCompleto
}
