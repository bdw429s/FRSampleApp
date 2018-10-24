<cfoutput>
<br>
<br>
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
</cfoutput>