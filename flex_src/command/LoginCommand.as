package command
{
	import event.LoginEvent;
	
	import model.User;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.Fault;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	

	public class LoginCommand {
		
		[Inject(id="login")]
		public var service:RemoteObject; //注入远程调用对象
		
		[Inject]
		public var user:User;//注入parsley托管的User
		
		public function execute( e:LoginEvent ):AsyncToken {
			return service.login(e.user) as AsyncToken;
		}
		
		public function result (result: Boolean): void {
			trace(result.toString());
		}
		
		public function error (fault:Fault) : void {
			trace(fault.toString());
		}
	}
}