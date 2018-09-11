<cfscript>
	urls = {
		'/' : 'main.index',
		'/index.cfm' : 'main.index',
		'/index.cfm?event=main' : 'main.index',
		'/index.cfm?event=main.index' : 'main.index',
		'/index.cfm/main' : 'main.index',
		'/index.cfm/main/index' : 'main.index',
		'/index.cfm/main/index/foo/bar' : 'main.index',
		'/foobar' : 'main.index',
		'/index.cfm?fwreinit=1' : 'main.index',  // Note, main.onAppInit() does run as part of the reinit prior to main.index executing
		'/main/directRender' : 'main.directRender',
		'/main/noRender' : 'main.noRender',
		'/directRouteReturn' : '??',   // Not sure what to show, but don't show "main.index!"
		'/nonExistentRoute' : 'main.notFound',
		'/main/fakeout' : 'main.sneaky',
		'/main/doSomething' : 'main.doSomething',
		'/main/cachedEvent' : 'main.cachedEvent',
		'/api' : 'api:home.index',
		'/api/home' : 'api:home.index',
		'/api/home/index' : 'api:home.index',
		'/index.cfm?event=api:home' : 'api:home.index',
		'/index.cfm?event=api:home.index' : 'api:home.index',
		'/api/foobar' : 'api:home.index',
		'/main/implicitView' : 'main.implicitView',
		'/package/myHandler' : 'package.myHandler.index',
		'/package/myHandler/index' : 'package.myHandler.index',
		'/index.cfm?event=package.myHandler.index' : 'package.myHandler.index'
	};
	urlsArr = urls.keyArray().sort( 'text' );
</cfscript>
<cfoutput>
<br>
<br>
<table border="1">
	<tr>
		<td><strong>URL</strong></td>
		<td><strong>Expected Event name</strong></td>
	</tr>
	<cfloop array="#urlsArr#" index="thisURL" >
		<tr>
			<td>&nbsp;<a href="#thisURL#">#thisURL#</a>&nbsp;</td>
			<td>&nbsp;#urls[ thisURL ]#&nbsp;</td>
		</tr>
	</cfloop>
</table>
</cfoutput>