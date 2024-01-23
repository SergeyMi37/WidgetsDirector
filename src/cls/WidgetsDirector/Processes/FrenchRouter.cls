/// 
Class WidgetsDirector.Processes.FrenchRouter Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='WidgetsDirector.Messages.LanguageRequest' response='WidgetsDirector.Messages.LanguageResponse' height='2000' width='2000' >
<sequence xend='200' yend='700' >
<call name='Get Language' target='GetLanguageDetails' async='0' xpos='200' ypos='250' >
<request type='WidgetsDirector.Messages.LanguageRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='WidgetsDirector.Messages.LanguageResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
<if name='FrenchRedirect' condition='response.languageCode="fr"' xpos='200' ypos='350' xend='200' yend='600' >
<true>
<call name='SendToFrenchHelpdesk' target='SendToFrenchHelpdesk' async='1' xpos='335' ypos='500' >
<request type='WidgetsDirector.Messages.AdvisorUpdate' >
<assign property="callrequest.ticketId" value="request.ticketId" action="set" />
<assign property="callrequest.AdvisorId" value="11" action="set" />
</request>
</call>
</true>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
