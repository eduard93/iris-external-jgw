Class demo.bo.DbEventOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method TestCall(pRequest As Ens.Request, Output pResponse As Ens.Response) As %Status
{
    set tSC = ..Adapter.ExecuteQuery(.tResult,"select * from appevents")
    while tResult.%Next() {
      set row = tResult.GetRowList()
      $$$TRACE($lts(row, " "))
    }
    quit tSC
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="Ens.StringRequest">
    <Method>TestCall</Method>
  </MapItem>
</MapItems>
}

}
