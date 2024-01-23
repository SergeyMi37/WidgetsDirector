Class WidgetsDirector.Director.Ticket Extends (%Persistent, %JSON.Adaptor)
{

Property Keyword As %String(MAXLEN = 2000);

Property Description As %String(MAXLEN = 10000);

Property Advisor As WidgetsDirector.Director.UserAccount;

Property Contact As WidgetsDirector.Director.UserAccount;

Property OpenDate As %Date;

Property OpenTime As %Time;

Property ResolveDate As %Date;

Property ResolveTime As %Time;

Property TicketId As %Integer [ Calculated, SqlComputeCode = { Set {*}={%%ID}}, SqlComputed ];

Property Actions As list Of WidgetsDirector.Director.TicketActions;

Storage Default
{
<Data name="TicketDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Keyword</Value>
</Value>
<Value name="3">
<Value>Description</Value>
</Value>
<Value name="4">
<Value>Advisor</Value>
</Value>
<Value name="5">
<Value>Contact</Value>
</Value>
<Value name="6">
<Value>OpenDate</Value>
</Value>
<Value name="7">
<Value>OpenTime</Value>
</Value>
<Value name="8">
<Value>ResolveDate</Value>
</Value>
<Value name="9">
<Value>ResolveTime</Value>
</Value>
<Value name="10">
<Value>Actions</Value>
</Value>
</Data>
<DataLocation>^WidgetsDirector.Dir149A.TicketD</DataLocation>
<DefaultData>TicketDefaultData</DefaultData>
<IdLocation>^WidgetsDirector.Dir149A.TicketD</IdLocation>
<IndexLocation>^WidgetsDirector.Dir149A.TicketI</IndexLocation>
<StreamLocation>^WidgetsDirector.Dir149A.TicketS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
