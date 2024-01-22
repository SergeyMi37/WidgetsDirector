Class WIDGETDIRECTORPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="WIDGETDIRECTORPKG.FoundationProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="Ens.Activity.Operation.Local" Category="" ClassName="Ens.Activity.Operation.Local" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="GetLanguageDetails" Category="" ClassName="Operations.LanguageIdentify" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="LanguageServer">mylangserver.internal.com</Setting>
    <Setting Target="Host" Name="LanguageURL">/langservice/</Setting>
  </Item>
  <Item Name="FrenchRouter" Category="" ClassName="Processes.FrenchRouter" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="NewTicketCheck" Category="" ClassName="Services.NewTicketCheck" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">Localhost</Setting>
    <Setting Target="Adapter" Name="DSN">IRIS20231 User</Setting>
    <Setting Target="Adapter" Name="KeyFieldName">TicketId</Setting>
    <Setting Target="Adapter" Name="Query">Select Id as TicketId,Description FROM 
Director.Ticket</Setting>
  </Item>
  <Item Name="SendToFrenchHelpdesk" Category="" ClassName="Operations.FrenchAdvisor" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
