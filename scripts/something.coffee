# Description:
#   What could this be

module.exports = (robot) ->
  robot.hear /(urn:tid:[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})/i, (msg) ->
    did = encodeURIComponent(msg.match[1].replace(/:/g, '\\:').replace(/\-/g, '\\-'))
    msg.send '*O hai I\'m ' + msg.match[1] + '*\n```_Terminate me:_ https://poynt.net/terminals/manage/did/' + msg.match[1] + '```\n```_Graylog me:_ https://graylog-portal.poynt.net/search?q=%28%28type%3AGo+AND+_exists_%3Aandroid_build%29+OR+source%3AKAFKA_DEVICE_LOG%29+AND+%28device_uuid%3A' + did + '+OR+deviceId%3A' + did + '%29&relative=2592000&page=0```'
