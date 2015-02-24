# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
hellos = [
    "Well hello there, %",
    "Hey %, Hello!",
    "Marnin', %",
    "Good day, %",
    "Good 'aye!, %",
    "Sup %!",
    "What it do",
    "I can't call it, %s",
    "Hola %s!",
    "Buongiorno, %s",
    "Guten tag, %s",
    "你好%s (Nǐ hǎo)",
    "こんにちは%s (Kon'nichiwa)",
    "Здравствуйте, %s (Zdravstvuyte)",
    "خوش آمدید, %s",
    "Witam, %s",
    "Bonjour %s!",
    "안녕하세요, %s (annyeonghaseyo)",
    "Hullo %s!"
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %",
    "Top 'o the mornin to ya!"
]
module.exports = (robot) ->
    robot.hear /(hello|good( [d'])?ay(e)?)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^hi |^hey )/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name
