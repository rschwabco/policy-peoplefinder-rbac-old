package peoplefinder.POST.api.users

import data.functions.user_has_permission

default allowed = false
default visible = false
default enabled = false

f(decision) {
  user_has_permission("peoplefinder.POST.api.users", decision)
}

allowed {
  f("allowed")
}

visible {
  f("visible")
}

enabled {
  f("enabled")
}
