package peoplefinder.POST.api.users.__id

import input.policy.path
import input.user.attributes

default allowed = false

default visible = false

default enabled = false

allowed {
	some index
	data.roles.roles[attributes.roles[index]].perms[path].allowed
}

visible {
	some index
	data.roles.roles[attributes.roles[index]].perms[path].visible
}

enabled {
	some index
	data.roles.roles[attributes.roles[index]].perms[path].enabled
}
