﻿<cf_dbfunction name="OP_concat" returnvariable="_Cat">

<cfset navegacion = ''>
<!---Carga valores del form----->
<cfif isdefined("url.TipoProceso") and not isdefined("form.TipoProceso") >
	<cfset form.TipoProceso = url.TipoProceso >
</cfif>
<cfif isdefined("url.Vcodigoresp") and not isdefined("form.Vcodigoresp") >
	<cfset form.Vcodigoresp = url.Vcodigoresp >
</cfif>

<!---Carga de valores de navegacion----->			
<cfif isdefined("Form.TipoProceso") and len(trim(form.TipoProceso)) >
	<cfset navegacion = navegacion & "&TipoProceso=#form.TipoProceso#">
</cfif>	
<cfif isdefined("Form.Vcodigoresp") and len(trim(form.Vcodigoresp)) >
	<cfset navegacion = navegacion & "&Vcodigoresp=#form.Vcodigoresp#">
</cfif>
	

<cfquery name="rsTipoProceso" datasource="#session.dsn#">
	select TPid, TPcodigo, TPdescripcion
    from <cf_dbdatabase table="FTTipoProceso " datasource="ftec">
    where Ecodigo = <cfqueryparam cfsqltype="cf_sql_numeric" value="#Session.Ecodigo#">
    order by TPcodigo,TPdescripcion
</cfquery>


<form name="filtroSolicitudes" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="areaFiltro">
	<cfoutput>
	<tr>
  		<td class="fileLabel">Tipo Solicitud:</td>
<!---        <td class="fileLabel">Proyecto</td>--->
  	</tr>
	<tr>
   		<td>
            <select name="TipoProceso">
            	<option value="-1">Todos</option>
            	<cfloop query="rsTipoProceso">
            		<option value="#rsTipoProceso.TPcodigo#">#rsTipoProceso.TPdescripcion#</option>
            	</cfloop>
            </select>
		</td>
    	<!---<td colspan="3">
        	<cf_FTvicerrectoria tabindex="1" form="filtroSolicitudes" size="30" id="Vpkresp" name="Vcodigoresp" desc="Vdescripcionresp" 
                            titulo="Seleccione Proyecto" proyectos="1" excluir="-1">   
        </td>--->
        
        <td align="center">
			<input name="btnBuscar" type="submit" id="btnBuscar" value="Filtrar">
        </td>
    </tr>
    </cfoutput>
  
      
    </tr>

</table>
</form>

<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
        <td>
            <cfquery name="rsListaSolicitudes" datasource="#Session.DSN#">
                select 
                    a.SPid,
                    a.TPid,
                    a.FPid,
                    a.SPestado,
                    <!---b.Vcodigo #_Cat# ' - ' #_Cat# b.Vdescripcion as Proyecto,--->
                    c.FPcodigo,
                    c.FPdescripcion,
                    <!---b.Vcodigo,
                    b.Vdescripcion,--->
                    d.TPcodigo #_Cat# ' - ' #_Cat#  d.TPdescripcion as Tipo, 
                    d.TPcodigo
                    ,(select 
                        coalesce(sum(a1.DSPmontototal),0.00) 
                    from <cf_dbdatabase table="FTDSolicitudProceso " datasource="ftec"> a1
                        inner join <cf_dbdatabase table="FTSolicitudProceso " datasource="ftec"> b1
                            on a1.SPid = b1.SPid
                    where b1.SPid = a.SPid) as Total
                    
                from <cf_dbdatabase table="FTSolicitudProceso " datasource="ftec"> a
                <!---inner join FTVicerrectoria b
                    on a.Vid = b.Vid
                    and a.Ecodigo = b.Ecodigo--->
                inner join <cf_dbdatabase table="FTFormaPago " datasource="ftec"> c
                    on a.FPid = c.FPid
                    and a.Ecodigo = c.Ecodigo
                inner join <cf_dbdatabase table="FTTipoProceso " datasource="ftec"> d
                    on a.TPid = d.TPid
                    and a.Ecodigo = c.Ecodigo
                where a.Ecodigo = <cfqueryparam cfsqltype="cf_sql_integer" value="#Session.Ecodigo#">
                and not exists (select 1 from <cf_dbdatabase table="FTHistoriaTramite " datasource="ftec"> h where h.SPid = a.SPid)
                
                <cfif isdefined("Form.TipoProceso") and Len(Trim(Form.TipoProceso)) NEQ 0>
                    <cfif Form.TipoProceso NEQ "-1">
                        and d.TPcodigo = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.TipoProceso#">
                    </cfif>
                </cfif>
                <cfif isdefined("Form.Vcodigoresp") and Len(Trim(Form.Vcodigoresp)) NEQ 0>
                    and b.Vcodigo = <cfqueryparam cfsqltype="cf_sql_varchar" value="#Form.Vcodigoresp#">
                </cfif>
                and a.Usucodigo = #session.Usucodigo#
            </cfquery>  
            
            
    
            <form style="margin:0" name="listaSolicitudes" method="post" action="/cfmx/ftec/catalogos/Solicitudes-listaSql.cfm">
                <cfinvoke component="rh.Componentes.pListas" method="pListaQuery" returnvariable="pListaRet">
                    <cfinvokeargument name="query" value="#rsListaSolicitudes#"/>
                    <cfinvokeargument name="desplegar" value="Tipo,  Total"/>
                    <cfinvokeargument name="etiquetas" value="Tipo, Monto"/>
                    <cfinvokeargument name="formatos" value="V,M"/>
                    <cfinvokeargument name="align" value="left, right"/>
                    <cfinvokeargument name="ajustar" value="N"/>
                    <cfinvokeargument name="botones" value="Nuevo"/>
                    <cfinvokeargument name="irA" value="/cfmx/ftec/catalogos/Solicitudes-listaSql.cfm"/>
                    <cfinvokeargument name="keys" value="SPid"/>
                    <cfinvokeargument name="MaxRows" value="20"/>
                     <cfinvokeargument name="formName" value="listaSolicitudes"/> <!------>
                    <cfinvokeargument name="debug" value="N"/>
                    <cfinvokeargument name="navegacion" value="#navegacion#"/>
                    <cfinvokeargument name="incluyeForm" value="true"/>	
                </cfinvoke>
            </form>
            <!---<cfinvokeargument name="checkboxes" value="S"/>--->
        </td>
    </tr>
	<tr><td>&nbsp;</td></tr>
</table>
