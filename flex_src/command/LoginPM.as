package command
{
	import event.LoginEvent;
	
	import model.User;
	
	import mx.rpc.events.FaultEvent;

	public class LoginPM
	{
		[Bindable]
		public var user:User=new User();
		[MessageDispatcher]
		public var sendMessage:Function;//派发事件函数
		
		public function login() : void{
			sendMessage(new LoginEvent(user));  //派发一个事件
		}
	}
}