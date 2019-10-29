<cfscript>

    variables.fragentClass = createObject( 'java', 'com.intergral.fusionreactor.agent.Agent' );
            fragentClass.getAgentInstrumentation().get( "cflpi" ).setActive( true );
            fragentClass.getAgentInstrumentation().get( "cflpi" ).reset();

    myService =  new models.myService();
    dump( myService.method1() )


    myService2 = new models.myService();
    dump( myService2.method2() )

    dump( fragentClass.getAgentInstrumentation().get("cflpi").getSourceFiles() ); abort;

    var lineMetricMap = fragentClass.getAgentInstrumentation().get("cflpi").getLineMetrics( jFile.getCanonicalPath() );

            fragentClass.getAgentInstrumentation().get( "cflpi" ).setActive( false );
            fragentClass.getAgentInstrumentation().get( "cflpi" ).reset();

</cfscript>