component extends="coldbox.system.EventHandler"{

	function index(event,rc,prc){
		prc.welcomeMessage = "Welcome to ColdBox!";
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