@include "usergrid_api_regex.awk"
@include "usergrid_access.awk"
{
	org = "-"
	app = "-"
	api = "-"

	for (name in api_regex) {
		if ( uri ~ api_regex[name] ) {
			match(uri, api_regex[name], res)
			org=res[1]
			app=res[2]
			api=method"_"name
			break
		}
	}

	if ( api != "-" ) {
		#printf "%s#%s\t%s\t%d\n", org, app, api, status
		app_name=org"#"app
		count[app_name, api, status] += 1
		total_request_time[app_name, api, status] += request_time
	}
	else {
		#print
	}
}
END {
	for ( app_api_status in count ) {
		split(app_api_status, idx, SUBSEP)
		app = idx[1]
		api = idx[2]
		status = idx[3]
		request_time = total_request_time[app_api_status]

		printf "%s %s %d %d %f\n", app, api, status, count[app_api_status], request_time
	}
}
