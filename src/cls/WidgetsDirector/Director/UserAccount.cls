Class WidgetsDirector.Director.UserAccount Extends (%Persistent, %JSON.Adaptor)
{

Property Name As %String;

Property EmailAddress As %String;

Property Staff As %Boolean [ InitialExpression = 0 ];

Property PhoneNumber As %String;

Property UserId As %Integer [ Calculated, SqlComputeCode = { Set {*}={%%ID}}, SqlComputed ];

Storage Default
{
<Data name="UserAccountDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>EmailAddress</Value>
</Value>
<Value name="4">
<Value>Staff</Value>
</Value>
<Value name="5">
<Value>PhoneNumber</Value>
</Value>
</Data>
<DataLocation>^WidgetsDirecto149A.UserAccountD</DataLocation>
<DefaultData>UserAccountDefaultData</DefaultData>
<IdLocation>^WidgetsDirecto149A.UserAccountD</IdLocation>
<IndexLocation>^WidgetsDirecto149A.UserAccountI</IndexLocation>
<StreamLocation>^WidgetsDirecto149A.UserAccountS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
