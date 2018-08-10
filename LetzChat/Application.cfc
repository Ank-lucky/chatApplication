<cfcomponent displayname="Application" output="true" hint="I handle the application" >

	<cfset this.name="LetzChatWebApp"/>
	<cfset this.applicationTimeout= createTimespan(0,2,0,0)/>
	<cfset this.datasource="chatDb" />
	<cfset this.sessionmanagement="yes" />
	<cfset this.mappings["/local"] = getDirectoryFromPath(getCurrentTemplatePath()) />

	<cffunction name="OnError" access="public" returnType="void" output="true">
		<cfargument name="exceptionType" required="true" />
		<cfargument name="exceptionEvent" required="true" />

		<cflog type="Error" file="onError" text="Exception error Type:#argumnents.exceptionType# Exception message:#exceptionEvent#" />
		<!---Display an error message--->
		<cfoutput>
		<h2>Sorry! but there's an unwanted error</h2>
		<p>We can help you if you can contact to a technical support team giving the following details:</p>
		<p>Error Type: #arguments.exceptionType#</p>		
		<p>Error Message: #arguments.exceptionEvent#</p>
		</cfoutput>
	</cffunction>


</cfcomponent>
