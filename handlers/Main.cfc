component extends="coldbox.system.EventHandler"{

	function index(event,rc,prc){
		prc.urls = {
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
			'/index.cfm?event=package.myHandler.index' : 'package.myHandler.index',
			'/api/v1/cruises/serializer/234234' : 'CruiseSearchAPIv1:Serializer.get',
			'/api/v1/cruises/search/234232' : 'CruiseSearchAPIv1:search.get',
			'/api/v1/cruises/search' : 'CruiseSearchAPIv1:search.index',
			'/index.cfm/myHandler/wrapit' : 'myHandler.wrapped'
		};
		prc.aURLs = prc.urls.keyArray().sort( 'text' );
		
		event.setView("main/index");
	}

	function doSomething(event,rc,prc){
		relocate( "main.index" );
	}

	function directRender(event,rc,prc){
		return '<h1>Direct Render</h1>';
	}

	function noRender(event,rc,prc){
		event.noRender();
	}

	function notFound(event,rc,prc){
		event.setView( 'main/notFound' );
	}

	function fakeout(event,rc,prc){
		// I never get run 
		// See the preProcess interceptor in config/ColdBox.cfc
	}
	
	function sneaky(event,rc,prc){
		prc.welcomeMessage = "Welcome to ColdBox!";
		event.setView("main/index");
	}
	
	function cachedEvent(event,rc,prc) cache=true {
		event.setView( 'main/cachedEvent' );
	}
	
	function throwAnException(event,rc,prc) {
		throw( message='Bad things have happened', detail='Here''s what we know...' );
	}

	function onException(event,rc,prc){
		event.setHTTPHeader( statusCode = 500 );
		//Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		//Place exception handler below:
	}

	function onRequestStart(event,rc,prc){
	}

	function onAppInit(event,rc,prc){
	}

}