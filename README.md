# AnyConnectLogin

- [About](#about)
- [License](#license)

## About

**AnyConnectLogin** is a small tool for login automatically.


## Settings

1. Download *[UI Automation PowerShell Extensions](https://uiautomation.codeplex.com/)* and put it's files into `AnyConnectLogin\UIAutomation` directory.

2. Create `%USERPROFILE%\_windows` file as below.

```
USER_ID=<your id>
PASSWORD=<your password>
```

3. Create a shortcut file of `AnyConnectLogin.vbs` and put it into your Windows Startup directory(`%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup).


## Run

Run `AnyConnectLogin.vbs`. That's all! If the AnyConnect window is popuped, this tool will login automatically.


## License

Licensed under the [MIT](/LICENSE.txt) license.
