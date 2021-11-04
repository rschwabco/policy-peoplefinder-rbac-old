package peoplefinder.GET.api.users

import input.user.applications.peoplefinder

default allowed = false

default visible = false

default enabled = false

allowed {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users"].allowed
}

visible {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users"].visible
}

enabled {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.GET.api.users"].enabled
}
