package com.debug 
{
	/**
	 * ...
	 * @author aditya hadiwijaya
	 */
	public class LocalDebugger implements IDebugger 
	{
		/* INTERFACE com.debug.IDebugger */
		
		public function print(message:*):void 
		{
			trace(message);
		}
		
	}

}