# Description:
#   osamame
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot osama me - Receive an osama
#   hubot osama bomb N - get N osamas
#
# Author:
#   charlesfeng

request = require('request')

osama = (n, next) ->
  request 'https://ajax.googleapis.com/ajax/services/search/images?v=1.0&rsz=8&start=' + Math.floor(Math.random() * 50) + '&q=%22osama%20bedier%22', (err, response, body) ->
    throw err if err
    try
      body = JSON.parse body
      return result.unescapedUrl for result in body.responseData.results.slice(0, n)
    catch err
      console.log err

module.exports = (robot) ->

  robot.respond /osama me/i, (msg) ->
    osama(1) (err, body) ->
      msg.send url for url in (body || [])

  robot.respond /osama bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    osama(count) (err, body) ->
      msg.send url for url in (body || [])
