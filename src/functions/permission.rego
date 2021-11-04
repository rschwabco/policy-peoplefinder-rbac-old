package functions

user_has_permission(permission, decision) {
  u = input.user
  some i
  data.roles.roles[u.applications.peoplefinder.roles[i]].perms[permission][decision]
}  
