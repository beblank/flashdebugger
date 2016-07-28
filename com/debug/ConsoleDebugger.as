package com.debug 
{
	import flash.external.ExternalInterface;
	/**
	 * ...
	 * @author aditya hadiwijaya
	 */
	public class ConsoleDebugger implements IDebugger 
	{
		/* INTERFACE com.debug.IDebugger */
		
		public function print(message:*):void 
		{
			try{
				ExternalInterface.call("console.log", message.toString());
			}
			catch (error:Error){
				trace(error);
			}
		}
		
	}

}