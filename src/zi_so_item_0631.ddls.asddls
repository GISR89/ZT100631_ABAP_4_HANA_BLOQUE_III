@AbapCatalog.sqlViewName: 'ZV_ITEM0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lab Funcion Busqueda Items'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_SO_Item_0631
  as select from zsalesorderitem
{
  key salesorder          as Salesorder,
  key salesorderitem      as Salesorderitem,
      product             as Product,
      @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
      orderquantity       as Orderquantity,
      @Semantics.unitOfMeasure: true
      orderquantityunit   as Orderquantityunit,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      netamount           as Netamount,
      @Semantics.currencyCode: true
      transactioncurrency as Transactioncurrency,
      creationdate        as Creationdate,
      createdbyuser       as Createdbyuser,
      creationdatetime    as Creationdatetime,
      lastchangedbyuser   as Lastchangedbyuser,
      lastchangedatetime  as Lastchangedatetime
}
