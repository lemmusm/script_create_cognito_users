# AWS CLI Create multiple cognito users with powershell script



### Step by step

1.- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

2.- Clone this repository.

3.- Edit the csv file according to your needs and custom attributes in your user pool.

4.- Edit .ps1 file and add pool id to $poolId variable value.

5.- Open PowerShell, go to project path and run: ```& "./create_users.ps1"```.

6.- Enjoy! 

### Important

Remember edit your credentials (aws_access_key_id, aws_secret_access_key and region) in ```C:\Users\{username}\.aws```.

### Warning


Disable vscode auto formatter, because it adds spaces in the aws command, verify that this does not happen, otherwise you will get errors


### Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

### License
[MIT](https://choosealicense.com/licenses/mit/)
