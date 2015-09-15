# Description:
#   What could this be

module.exports = (robot) ->
  robot.hear /(urn:tid:[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})/i, (msg) ->
    msg.send '*O hai I\'m ' + msg.match[1] + '*\n```Terminate me: https://poynt.net/a/terminals/' + msg.match[1] + '/manage```\n```Graylog me: https://poynt.net/a/terminals/' + msg.match[1] + '/graylog```'

  robot.hear /(P61[0-9A-Z]{14})/, (msg) ->
    msg.send '*O hai I\'m ' + msg.match[1] + '*\n```Terminate me: https://poynt.net/a/terminals/' + msg.match[1] + '/manage```\n```Graylog me: https://poynt.net/a/terminals/' + msg.match[1] + '/graylog```'

  robot.hear /(PNTK2[0-9A-Z]{12})/, (msg) ->
    msg.send '*O hai I\'m ' + msg.match[1] + '*\n```Terminate me: https://poynt.net/a/terminals/' + msg.match[1] + '/manage```\n```Graylog me: https://poynt.net/a/terminals/' + msg.match[1] + '/graylog```'
