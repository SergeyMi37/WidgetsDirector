/// Dimension table for cube 'Tickets'
/// THIS IS A GENERATED CLASS, DO NOT EDIT.<br/>
/// Generated by %DeepSee.Generator:%CreateStarTable.
Class User.Tickets.StarContact Extends %DeepSee.DimensionTable [ GeneratedBy = User.Tickets.CLS, Owner = {}, ProcedureBlock ]
{

Index Primary On DxContact [ Unique ];

/// Dimension property: DxContact<br/>
/// Source: Contact
Property DxContact As %String(COLLATION = "SQLUPPER(113)", MAXLEN = 2000) [ Required ];

/// Return the total number of members within this dimension.<br/>
/// Generated by %DeepSee.Generator:%CreateStarTable.
ClassMethod %Count() As %Integer
{
 Set tCount = 0
 &sql(SELECT COUNT(*) INTO :tCount FROM User_Tickets.StarContact)
 Quit tCount
}

/// Validate the KEY value for this dimension.<br/>
/// Generated by %DeepSee.Generator:%CreateStarTable.
ClassMethod DxContactIsValid(pArg As %String) As %Status
{
 Quit ##class(%DeepSee.DimensionTable).%ValidateKEY(pArg)
}

/// Return the specification string for the given member.<br/>
/// Generated by %DeepSee.Generator:%CreateStarTable.
ClassMethod %GetMemberSpec(pMemberId As %String, pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String
{
 Set tSpec = ""
 Set:pMemberId'="" tSpec = "&["_$$$dsEscapeIdent(..DxContactGetStored(pMemberId))_"]"
 Quit tSpec
}

/// Fetch the value of a given dimension property.<br/>
/// Generated by %DeepSee.Generator:%CreateStarTable.
ClassMethod %GetDimensionProperty(pProp As %String, pID As %String, Output pFormat As %String, Output pType As %String) As %String
{
 Set pProp = $$$UPPER(pProp)
 Set tValue=""
 Set pFormat=""
 If (pProp="DXCONTACT") {
  &sql(SELECT DxContact INTO :tValue FROM User_Tickets.StarContact WHERE %ID = :pID)
  Set pType="%String"
 }
 Quit tValue
}

Parameter CUBENAME = "Tickets";

Parameter DESCRIPTIONPROPERTY;

Parameter KEYPROPERTY = "DxContact";

Storage Default
{
<Data name="StarContactDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DxContact</Value>
</Value>
</Data>
<DataLocation>^DeepSee.Dimension("USER.TICKETS.STARCONTACT")</DataLocation>
<DefaultData>StarContactDefaultData</DefaultData>
<ExtentSize>100</ExtentSize>
<IdLocation>^DeepSee.Dimension("USER.TICKETS.STARCONTACT")</IdLocation>
<IndexLocation>^DeepSee.DimensionI("USER.TICKETS.STARCONTACT")</IndexLocation>
<StreamLocation>^DeepSee.DimensionS("USER.TICKETS.STARCONTACT")</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}