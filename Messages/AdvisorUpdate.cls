Class Messages.AdvisorUpdate Extends Ens.Request
{

Property AdvisorId As %Integer;

Property ticketId As %Integer;

Storage Default
{
<Data name="AdvisorUpdateDefaultData">
<Subscript>"AdvisorUpdate"</Subscript>
<Value name="1">
<Value>AdvisorId</Value>
</Value>
<Value name="2">
<Value>ticketId</Value>
</Value>
</Data>
<DefaultData>AdvisorUpdateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
