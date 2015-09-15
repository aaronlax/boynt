# Description:
#   What could this be

module.exports = (robot) ->
  robot.hear /(urn:tid:[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})/i, (msg) ->
    msg.send 'Terminate me https://poynt.net/terminals/manage/did/' + msg.match[1]
