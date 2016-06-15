#import "FindFriendEntryViewController.h"

%hook WCDeviceStepObject
- (unsigned int)m7StepCount
{
if([[NSUserDefaults standardUserDefaults] valueForKey:@"hzChangeSport"]){
int a = [[[NSUserDefaults standardUserDefaults] valueForKey:@"hzChangeSport"] intValue];
return a;
}else{
return 1234;
}
}

%end


%hook FindFriendEntryViewController

- (void)viewDidLoad{
%orig;
self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"步数" style:UIBarButtonItemStyleDone target:self action:@selector(changeSport)];
}

%new
- (void)changeSport{
            UIAlertView * alerView = [[UIAlertView alloc]initWithTitle:@"修改步数" message:@"请输入要修改的步数，仅限数字！" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"修改", nil];
            alerView.alertViewStyle = UIAlertViewStylePlainTextInput;
            alerView.tag = 123;
            [alerView show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
if(alertView.tag == 123){
UITextField * inputTextField = [alertView textFieldAtIndex:0];
if ([inputTextField.text isEqualToString:@""] || inputTextField.text == nil) {

}else{
UIAlertView * alerView = [[UIAlertView alloc]initWithTitle:@"修改成功" message:inputTextField.text delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
[alerView show];

[[NSUserDefaults standardUserDefaults] setValue:inputTextField.text forKey:@"hzChangeSport"];
return;
}
}else{
}
}

%end