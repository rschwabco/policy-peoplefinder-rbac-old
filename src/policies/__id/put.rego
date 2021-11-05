package peoplefinder.PUT.api.users.__id

import input.user.applications.peoplefinder

default allowed = false

default visible = false

default enabled = false

allowed {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.PUT.api.users.__id"].allowed
}

allowed {
	input.user.id == input.resource.id
}

visible {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.PUT.api.users.__id"].visible
}

enabled {
	some index
	data.roles.roles[peoplefinder.roles[index]].perms["peoplefinder.PUT.api.users.__id"].enabled
}
