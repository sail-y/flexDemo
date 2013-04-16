package event
{
	import flash.events.Event;
	
	import model.User;
	
	public class LoginEvent extends Event
	{
		private static const LOGIN:String = "login";
		
		private var _user : User;
		
		public function LoginEvent(user:User)
		{
			this.user=user;
			super(LOGIN, false, false);
		}


		public function get user():User
		{
			return _user;
		}

		public function set user(value:User):void
		{
			_user = value;
		}
		
		override public function clone():Event
		{
			return new LoginEvent(user);
		}
		
		
	}
}