Class WidgetsDirector.Director.TicketActions Extends %SerialObject
{

Property ActionText As %String(MAXLEN = 3000);

Property ActionOwner As WidgetsDirector.Director.UserAccount;

Property ActionDate As %Date;

Property ActionTime As %Time;

Storage Default
{
<Data name="TicketActionsState">
<Value name="1">
<Value>ActionText</Value>
</Value>
<Value name="2">
<Value>ActionOwner</Value>
</Value>
<Value name="3">
<Value>ActionDate</Value>
</Value>
<Value name="4">
<Value>ActionTime</Value>
</Value>
</Data>
<State>TicketActionsState</State>
<StreamLocation>^WidgetsDirec149A.TicketActionsS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
