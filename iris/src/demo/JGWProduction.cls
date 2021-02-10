Class demo.JGWProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="demo.JGWProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="JGW" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="Address">host.docker.internal</Setting>
    <Setting Target="Host" Name="Port">2021</Setting>
    <Setting Target="Host" Name="Logfile"></Setting>
  </Item>
  <Item Name="DbEventOperation" Category="" ClassName="demo.bo.DbEventOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="Credentials">Demo</Setting>
    <Setting Target="Adapter" Name="DSN">jdbc:postgresql://host.docker.internal:5432/demo</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">org.postgresql.Driver</Setting>
    <Setting Target="Adapter" Name="JGService">JGW</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/jgw/postgresql-42.2.18.jar</Setting>
  </Item>
</Production>
}

}
