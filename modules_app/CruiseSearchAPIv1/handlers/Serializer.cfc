component{

	/**
	* ( HEAD ) /api/v1/cruises/serializer/:id
	**/
	function getLastSerialization( event, rc, prc ){

		return {
			data = "head"
		};

	}

	/**
	* ( GET ) /api/v1/cruises/serializer/:id
	**/
	function get( event, rc, prc ){
		
		return {
			data = "get"
		};

	}


	/**
	* ( PUT/POST ) /api/v1/cruises/serializer/:id
	*/
	function serialize( event, rc, prc ){

		return {
			data = "serialize"
		};

	}
	
}