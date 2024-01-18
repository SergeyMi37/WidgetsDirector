Class Director.UserAccount Extends (%Persistent, %JSON.Adaptor)
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
<DataLocation>^Director.UserAccountD</DataLocation>
<DefaultData>UserAccountDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^Director.UserAccountD</IdLocation>
<IndexLocation>^Director.UserAccountI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="EmailAddress">
<AverageFieldSize>24</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>9</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="PhoneNumber">
<AverageFieldSize>10</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Staff">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Director.UserAccountS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
