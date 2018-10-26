component {
	
	function wrapit(event,rc,prc){
		event.setView("myhandler/wrapped");
	}

	function aroundhandler( event, rc, prc, targetAction, eventArguments ){
		var actionResults = arguments.targetAction( argumentCollection=arguments );
		
		if( !isNull( actionResults ) ){
			return actionResults;
		}
	}

}