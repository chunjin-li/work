{
	if ( NF < 16 ) { next }

	method = substr($5, 2, 10)
	request_uri = $6
	split(request_uri, u, "?")
	uri = u[1]
	status = $8
	request_time = $(NF-3)
}
