# Description:
#   Wow. Such Doge
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot doge me - Wow. Such Doge
#   hubot how many doges - Wow. Many Doges
#
# Author:
#   rowanmanning

module.exports = (robot) ->

  robot.respond /doge me/i, (msg) ->
    msg.http("http://dogeme.rowanmanning.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).doge

  robot.respond /how many doges?/i, (msg) ->
    msg.http("http://dogeme.rowanmanning.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).doge_count} doges."
