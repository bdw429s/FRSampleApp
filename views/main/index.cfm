<cfoutput>
<br>
<br>
<h2>Event Detection</h2>
<table border="1">
	<tr>
		<td><strong>URL</strong></td>
		<td><strong>Expected Event name</strong></td>
	</tr>
	<cfloop array="#prc.aURLs#" index="thisURL" >
		<tr>
			<td>&nbsp;<a href="#thisURL#">#thisURL#</a>&nbsp;</td>
			<td>&nbsp;#prc.urls[ thisURL ]#&nbsp;</td>
		</tr>
	</cfloop>
</table>

<br>

<h2>Error Handling</h2>
<a href="/index.cfm/main/throwAnException">/index.cfm/main/throwAnException</a> - Hit standard ColdBox error handling<br>
<a href="/?bypassColdBoxErrorHandling=true">/?bypassColdBoxErrorHandling=true</a> - Bypass ColdBox error handling and trap error in Application.cfc's onError()<br>
<a href="/?bypassALLErrorHandling=true">/?bypassALLErrorHandling=true</a> - Bypass ALL error handling and leave exception unhandled<br>

</cfoutput>