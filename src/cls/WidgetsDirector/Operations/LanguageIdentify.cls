Class WidgetsDirector.Operations.LanguageIdentify Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Parameter SETTINGS = "LanguageServer,LanguageURL";

Property LanguageServer As %String;

Property LanguageURL As %String;

Method SetupHTTP() As %Net.HttpRequest
{
	Set HttpRequest=##class(%Net.HttpRequest).%New()
    Set HttpRequest.Server="your python microservice"
	Set HttpRequest.Timeout = 5   
	Set HttpRequest.Https=0
	Set HttpRequest.Port=52773
	
	Do HttpRequest.SetHeader("Content-Type","application/json")
	Quit HttpRequest
}

Method RequestLanguage(pRequest As Messages.LanguageRequest, Output pResponse As Messages.LanguageResponse) As %Status
{
	Set pResponse = ##class(WidgetsDirector.Messages.LanguageResponse).%New()
	//invoke solr data-import
	Set HttpRequest=..SetupHTTP()

	
	Do HttpRequest.EntityBody.Write({"text":(pRequest.textSample)}.%ToJSON())
	
	//trigger solr import
	Set tSC =  HttpRequest.Post("/langdetect/")
    If tSC {
        	Set JSONResp=HttpRequest.HttpResponse.Data    
           	Set objResponse = {}.%FromJSON(JSONResp)
            Set pResponse.languageCode = $PIECE(objResponse.lang,"^",1)
            Set pResponse.languageDesc = $PIECE(objResponse.lang,"^",2)
            Quit $$$OK

    } Else {
        Quit tSC
    }
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="Messages.LanguageRequest">
    <Method>RequestLanguage</Method>
  </MapItem>
</MapItems>
}

}
