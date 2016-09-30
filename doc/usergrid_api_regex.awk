BEGIN {
	api_regex["devices"] = "^/([^\/]+)/([^\/]+)/devices$"
	api_regex["token"] = "^/([^\/]+)/([^\/]+)/token$"
	api_regex["devicelogs"] = "^/([^\/]+)/([^\/]+)/devicelogs[/]{0,1}$"

	api_regex["users"] = "^/([^\/]+)/([^\/]+)/users[/]{0,1}$"
	api_regex["users_"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+$"
	api_regex["users_status"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/status$"
	api_regex["users_password"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/password$"
	api_regex["users_offline_msg_count"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/offline_msg_count$"
	api_regex["users_joined_chatgroups"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/joined_chatgroups$"
	api_regex["users_blocks_users"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/blocks/users[/]{0,1}$"
	api_regex["users_blocks_users_"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/blocks/users/[^\/]+$"
	api_regex["users_contacts_users"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/contacts/users[/]{0,1}$"
	api_regex["users_contacts_users_"] = "^/([^\/]+)/([^\/]+)/users/[^\/]+/contacts/users/[^\/]+$"

	api_regex["messages"] = "^/([^\/]+)/([^\/]+)/messages$"
	api_regex["chatmessages"] = "^/([^\/]+)/([^\/]+)/chatmessages[/]{0,1}$"
	api_regex["offline_chatmessages"] = "^/([^\/]+)/([^\/]+)/offline_chatmessages$"

	api_regex["chatfiles"] = "^/([^\/]+)/([^\/]+)/chatfiles[/]{0,1}$"
	api_regex["chatfiles_"] = "^/([^\/]+)/([^\/]+)/chatfiles/[^\/]+$"

	api_regex["chatgroups"] = "^/([^\/]+)/([^\/]+)/chatgroups$"
	api_regex["chatgroups_"] = "^/([^\/]+)/([^\/]+)/chatgroups/[^\/]+$"
	api_regex["chatgroups_users"] = "^/([^\/]+)/([^\/]+)/chatgroups/[^\/]+/users$"
	api_regex["chatgroups_users_"] = "^/([^\/]+)/([^\/]+)/chatgroups/[^\/]+/users/[^\/]+$"

	api_regex["counters"] = "^/([^\/]+)/([^\/]+)/counters$"
	api_regex["credentials"] = "^/([^\/]+)/([^\/]+)/credentials$"

	api_regex["management_token"] = "^/management/token$"
	api_regex["management_organizations_applications"] = "^/management/organizations/([^\/]+)/applications/([^\/]+)$"

	api_regex["NONAPI"] = "^/$|^/status$|^/favicon.ico$"
}
