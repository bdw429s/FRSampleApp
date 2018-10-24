component {

	// Module Properties
	this.title 				= "Travel Cruse Search Module";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= false;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = false;
	// Module Entry Point
	this.entryPoint			= "/api/v1/cruises";
	// Model Namespace
	this.modelNamespace		= "CruiseSearchAPIv1";
	// CF Mapping
	this.cfmapping			= "CruiseSearchAPIv1";
	// Auto-map models
	this.autoMapModels		= true;
	// Module Dependencies
	this.dependencies 		= [ ];

	function configure(){

		// SES Routes
		routes = [
			// Convention Route
			{ 
				pattern = "/serializer/:id", 
				handler = "Serializer", 
				action  = {
					"HEAD"  : "getLastSerialization",
					"GET"   : "get",
					"PUT"   : "serialize",
					"POST"  : "serialize"
				} 
			},
			{ 
				pattern = "/serializer", 
				handler = "Serializer", 
				action  = {
					"HEAD"  : "getLastSerialization",
					"GET"   : "onInvalidHTTPMethod",
					"PUT"   : "serializeAll",
					"POST"  : "serializeAll"
				}  
			},
			{ 
				pattern = "/search/:id", 
				handler = "Search", 
				action  = {
					"HEAD"		 : "get",
					"GET"        : "get"
				}
			},
			{ 
				pattern = "/search", 
				handler = "Search", 
				action  = {
					"OPTIONS"    : "options",
					"HEAD"		 : "index",
					"GET"        : "index",
					"POST"		 : "index"
				}
			},
			{ 
				pattern = "/:handler?/:action?", 
				handler = "Search", 
				action  = "index"
			}
		];

		/**
		* Custom interceptors for this module
		**/
		interceptors = [ 
		];

	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){

	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){

	}

}
