Class Operations.FrenchAdvisor Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method UpdateAdvisor(pRequest As Messages.AdvisorUpdate, Output pResponse As Ens.Response) As %Status
{
	
    set ticket = pRequest.ticketId
    set advisor = pRequest.AdvisorId
    &SQL(UPDATE WidgetsDirector_Director.Ticket set Advisor=:advisor WHERE ID = :ticket)
    
    QUIT $$$OK
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="Messages.AdvisorUpdate">
    <Method>UpdateAdvisor</Method>
  </MapItem>
</MapItems>
}

}
