# 导出应用列表
Get-AppxPackage >> D:\AppxPackage.bak1.txt
# 小娜
Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
# 获取帮助
Remove-AppxPackage -allusers Microsoft.GetHelp_10.2108.42428.0_x64__8wekyb3d8bbwe
# 人脉
Remove-AppxPackage -allusers Microsoft.People_10.2105.4.0_x64__8wekyb3d8bbwe
# 手机连接
Remove-AppxPackage -allusers Microsoft.YourPhone_0.22102.229.0_x64__8wekyb3d8bbwe
