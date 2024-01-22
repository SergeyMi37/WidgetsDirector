Class REST.Dispatch Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/ticket/:ticketid" Method="Get" Call="GetTicket" Cors="true" />
<Route Url="/ticket/" Method="Get" Call="GetTicketSummary" Cors="true" />
<Route Url="/ticket/" Method="POST" Call="UploadTicket" Cors="true" />
<Route Url="/useraccounts/:staff" Method="Get" Call="GetUserList" Cors="true" />
</Routes>
}

ClassMethod GetTicket(ticketid As %String) As %Status
{
    set tSC = $$$OK
    set %response.ContentType="application/json"
    set ticketObj = ##class(Director.Ticket).%OpenId(ticketid)
    if $ISOBJECT(ticketObj){
        do ticketObj.%JSONExport()
    } else {
        write {"Error":"Could not find that record"}.%ToJSON()
    }
    quit tSC
}

ClassMethod GetTicketSummary() As %Status
{
    Set tSC = $$$OK
    Set %response.ContentType="application/json"
    &SQL(DECLARE TicketCurs CURSOR FOR SELECT TOP 100 JSON_OBJECT('TicketId':ID,'Keyword':Keyword,'OpenDate':OpenDate) INTO :ticketJSON FROM Director.Ticket ORDER BY OpenDate DESC)
    &SQL(OPEN TicketCurs)
    set tAry=[] //Start an output array
    FOR    {
        &SQL(FETCH TicketCurs)
        QUIT:SQLCODE //Quit when SQLCODE is not 0 - OK
        set ticketObj = {}.%FromJSON(ticketJSON)
        
        d tAry.%Push(ticketObj)
    }
    &SQL(CLOSE TicketCurs)
    write tAry.%ToJSON()
    Quit tSC
}

ClassMethod UploadTicket() As %Status
{
    Set tSC = $$$OK
    Set %response.ContentType="application/json"
    Set ticketJSON = %request.Content.Read()
    Set ticketObj   = {}.%FromJSON(ticketJSON)
    set newTicketObj = ##class(Director.Ticket).%New()
    do newTicketObj.%JSONImport(ticketObj)
    
    if (ticketObj.Advisor.ID) do newTicketObj.AdvisorSetObjectId(ticketObj.Advisor.ID)
    If (ticketObj.Contact.ID) Do newTicketObj.ContactSetObjectId(ticketObj.Contact.ID)
    set newTicketObj.OpenDate = +$H
    set newTicketObj.OpenTime = $PIECE($H,",",2)
    if newTicketObj.%Save(){
        do newTicketObj.%JSONExport()
     
    } else {
        write {"Error":"Sorry, something went wrong"}
    }
    quit tSC
}

ClassMethod GetUserList(staff As %Boolean = 1) As %Status
{
    Set tSC = $$$OK
    Set %response.ContentType="application/json"
    &SQL(DECLARE UserCurs CURSOR FOR SELECT TOP 100 JSON_OBJECT('UserId':ID,'Name':Name) INTO :userJSON FROM Director.UserAccount WHERE Staff=:staff)
    &SQL(OPEN UserCurs)
    
    Set tAry=[] //Start an output array
    For    {
        &SQL(FETCH UserCurs)
        Quit:SQLCODE //Quit when SQLCODE is not 0 - OK
        set userObj = {}.%FromJSON(userJSON)
        Do tAry.%Push(userObj)
    }
    &SQL(CLOSE UserCurs)
    Write tAry.%ToJSON()
    Quit tSC
}

}
