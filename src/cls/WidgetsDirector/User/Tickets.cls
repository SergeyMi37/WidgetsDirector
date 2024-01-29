/// 
Class WidgetsDirector.User.Tickets Extends %DeepSee.CubeDefinition [ DependsOn = WidgetsDirector.Director.Ticket, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="Tickets" displayName="Tickets" disabled="false" abstract="false" sourceClass="WidgetsDirector.Director.Ticket" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="Advisor" disabled="false" hasAll="false" allCaption="All Advisor" allDisplayName="Advisor" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="Details" disabled="false" hidden="false">
      <level name="AdvisorId" disabled="false" sourceProperty="Advisor" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
      <level name="AdvisorName" disabled="false" sourceProperty="Advisor.Name" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="3">
      </level>
      <level name="AdvisorEmail" disabled="false" sourceProperty="Advisor.EmailAddress" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="10">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="Contact" disabled="false" hasAll="false" allCaption="All Contact" allDisplayName="Contact" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="Details" disabled="false" hidden="false">
      <level name="ContactId" disabled="false" sourceProperty="Contact" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="11">
      </level>
      <level name="ContactName" disabled="false" sourceProperty="Contact.Name" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="12">
      </level>
      <level name="ContactEmail" disabled="false" sourceProperty="Contact.EmailAddress" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="13">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="OpenDate" disabled="false" hasAll="false" allCaption="All OpenDate" allDisplayName="OpenDate" sourceProperty="OpenDate" type="time" calendar="gregorian" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" disabled="false" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="4">
      </level>
      <level name="Financial Quarter" disabled="false" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="5">
      </level>
      <level name="Month" disabled="false" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="6">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="ResolveDate" disabled="false" hasAll="false" allCaption="All ResolveDate" allDisplayName="ResolveDate" sourceProperty="ResolveDate" type="time" calendar="gregorian" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" disabled="false" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="7">
      </level>
      <level name="Financial Quarter" disabled="false" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="8">
      </level>
      <level name="Month" disabled="false" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="9">
      </level>
    </hierarchy>
  </dimension>
  <listing name="Details" disabled="false" listingType="table" fieldList="TicketId,Keyword,Description,OpenDate,OpenTime,ResolveDate,ResolveTime,Advisor-&gt;Name,Contact-&gt;Name" orderBy="OpenDate" selectMode="2">
  </listing>
</cube>
}

Parameter DOMAIN;

}
