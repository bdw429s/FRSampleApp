component{

	/**
	* ( OPTIONS ) /api/v1/cruises/search
	*/
	function options( event, rc, prc ){
		return {
			data = "options"
		};
	}

	/**
	* ( GET/POST ) /api/v1/cruises/search
	*/
	function index( event, rc, prc ){

		return {
			data = "index"
		};

	}

	/**
	* ( GET ) /api/v1/cruises/search/:id
	*/
	function get( event, rc, prc ){

		return {
			data = "get"
		};

	}

}