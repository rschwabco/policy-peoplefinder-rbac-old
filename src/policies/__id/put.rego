package peoplefinder.PUT.api.users.__id

import data.functions.user_has_permission

default allowed = false
default visible = false
default enabled = false

f(decision) {
  user_has_permission("peoplefinder.PUT.api.users.__id", decision)
}

allowed {
  f("allowed")
}

allowed {
  input.user.id == input.resource.id
}

visible {
  f("visible")
}

enabled {
  f("enabled")
}
