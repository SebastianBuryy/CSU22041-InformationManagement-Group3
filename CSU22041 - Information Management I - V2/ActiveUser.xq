let $activeUser := 
  for $user in /UserList/User[User_Status = 'active']
  return $user

for $user in $activeUser
return
  <UserInfo>
    <UserName>{data($user/@User_Name)}</UserName>
    <UserEmail>{data($user/User_Login/User_Email)}</UserEmail>
    <UserPassword>{data($user/User_Login/User_Password)}</UserPassword>
    <UserPhone>{data($user/@User_Phone)}</UserPhone>
    <UserDOB>{data($user/@User_DOB)}</UserDOB>
  </UserInfo>