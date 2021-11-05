package peoplefinder.GET.api.users.__id

import input.policy.path
import input.user.applications.peoplefinder

default allowed = false

default visible = false

default enabled = false

allowed {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users.__id"].allowed
}

visible {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users.__id"].visible
}

enabled {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users.__id"].enabled
}
