Class Director.Ticket Extends (%Persistent, %JSON.Adaptor)
{

Property Keyword As %String(MAXLEN = 2000);

Property Description As %String(MAXLEN = 10000);

Property Advisor As Director.UserAccount;

Property Contact As Director.UserAccount;

Property OpenDate As %Date;

Property OpenTime As %Time;

Property ResolveDate As %Date;

Property ResolveTime As %Time;

Property TicketId As %Integer [ Calculated, SqlComputeCode = { Set {*}={%%ID}}, SqlComputed ];

Property Actions As list Of Director.TicketActions;

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
<DataLocation>^Director.TicketD</DataLocation>
<DefaultData>TicketDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^Director.TicketD</IdLocation>
<IndexLocation>^Director.TicketI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Advisor">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Contact">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Description">
<AverageFieldSize>83</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Keyword">
<AverageFieldSize>24</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="OpenDate">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="OpenTime">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="ResolveDate">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="ResolveTime">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="TicketId">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^Director.TicketS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
