/**
* I am a new Model Object
*/
component accessors="true"{

	// Properties


	/**
	 * Constructor
	 */
	myService function init(){

		return this;
	}

	/**
	* method1
	*/
	function method1(){
		//dump( getMetaData( this ).getClass().getName() )
		systemoutput( 'method 1', 1 );
		return true;
	}

	/**
	* method2
	*/
	function method2(){
		systemoutput( 'method 2', 1 );
		return true;
	}


}