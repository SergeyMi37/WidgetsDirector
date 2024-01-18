Class Services.NewTicketCheck Extends Ens.BusinessService
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id$";

Parameter ADAPTER = "EnsLib.SQL.InboundAdapter";

Method OnProcessInput(pInput As EnsLib.SQL.Snapshot, Output pOutput As %RegisteredObject) As %Status
{
    set tMessage = ##class(Messages.LanguageRequest).%New()
    set tMessage.textSample=pInput.Description
    set tMessage.ticketId=pInput.TicketId
    Set tSC = ..SendRequestAsync("FrenchRouter", tMessage)	
	Quit tSC
}

}
