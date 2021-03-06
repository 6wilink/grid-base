-- todo: check system services
-- atf, tdma
-- dhcp
-- firewall, qos

local SYS = {}

SYS.ops = {}

function SYS.RAW()
	local _data = {}

	_data.atf = -1
	_data.tdma = -1
	_data.dhcp = 0
	_data.firewall = 1
	_data.qos = 1

	return _data
end

function SYS.JSON()
	local _result
	local _fmt = '{"atf": %d, "tdma": %d, "dhcp": %d, "firewall": %d, "qos": %d }'

	local _data = SYS.RAW()
	_result = string.format(_fmt, _data.atf, _data.tdma, _data.dhcp, _data.firewall, _data.qos)
	return _result
end

return SYS