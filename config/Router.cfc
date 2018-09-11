component{

	function configure(){
		setFullRewrites( true );

		route( "/foobar", "main.index" ).end();
		
		route( "/directRouteReturn", function( event, rc, prc ) {
			return "<h1>Direct Route Return</h1>";
		} ).end();
		
		route( ":handler/:action?" ).end();
	}

}