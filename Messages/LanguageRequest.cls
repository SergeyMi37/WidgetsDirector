Class Messages.LanguageRequest Extends Ens.Request
{

Property textSample As %String(MAXLEN = 10000);

Property ticketId As %Integer;

Storage Default
{
<Data name="LanguageRequestDefaultData">
<Subscript>"LanguageRequest"</Subscript>
<Value name="1">
<Value>textSample</Value>
</Value>
<Value name="2">
<Value>ticketId</Value>
</Value>
</Data>
<DefaultData>LanguageRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
