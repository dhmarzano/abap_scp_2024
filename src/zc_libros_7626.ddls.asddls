@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
@UI.headerInfo: { typeName: 'Libro',
                  typeNamePlural: 'Libros',
                  title:        {type : #STANDARD,
                                 value: 'Titulo'},
                  description:  {type : #STANDARD,
                                 value: 'Autor'},
                  imageUrl: 'URL'}
                  
define view entity ZC_LIBROS_7626 as select from ztb_libros_7626 as Libros
inner join ztb_catego_7626 as Categoria on Libros.bi_categ = Categoria.bi_categ
left outer join ZC_CLNT_LIB_7626 as Ventas on Libros.id_libro = Ventas.IdLibro
association [0..*] to ZC_CLIENTES_7626 as _Clientes on $projection.IdLibro = _Clientes.IdLIbro
{
key Libros.id_libro as IdLibro,
    Libros.titulo as Titulo,
    Libros.bi_categ as Categoria,
    Libros.autor as Autor,
    Libros.editorial as Editorial,
    Libros.idioma as Idioma,
    Libros.paginas as Paginas,
    @Semantics.amount.currencyCode: 'moneda'
    Libros.precio  as Precio,
    case 
    when Ventas.Ventas < 1 then 0
    when Ventas.Ventas = 1 then 1
    when Ventas.Ventas = 2 then 2
    else 3
    end as Ventas,
    case Ventas.Ventas
    when 0 then ''
    else ''
    end as Text,
    Libros.moneda as Moneda,
    Libros.formato as Formato,
    Categoria.descripcion as Descripcion,
    Libros.url as URL,
    _Clientes
}
