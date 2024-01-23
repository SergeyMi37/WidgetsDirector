Class WidgetsDirector.Messages.LanguageResponse Extends Ens.Response
{

Property languageCode As %String;

Property languageDesc As %String;

Storage Default
{
<Data name="LanguageResponseDefaultData">
<Subscript>"LanguageResponse"</Subscript>
<Value name="1">
<Value>languageCode</Value>
</Value>
<Value name="2">
<Value>languageDesc</Value>
</Value>
</Data>
<DefaultData>LanguageResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
