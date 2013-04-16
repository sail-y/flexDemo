package model
{
	[Bindable]
	[RemoteClass(alias="com.ria.flex.model.User")]
	public class User
	{
		private var _name:String;
		private var _password:String;
		
		
		
		public function get password():String
		{
			return _password;
		}

		public function set password(value:String):void
		{
			_password = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

	}
}