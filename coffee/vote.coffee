$ ->
  app.initialize()

window.app =
  votes: [0, 0, 0, 0]
  staffs:
    0: 'deguchi'
    1: 'sasaki'
    2: 'dei'
    3: 'matsuno'
  initialize: ->
    @setBind()

  setBind: ->
    self = @
    $('.staff_btn').on 'click', ->
      number = Number $(@).data('number')
      self.votes[number]++

    $('.result_btn').on 'click', ->
      _result = ''
      _.each self.votes, (val) ->
         _result += "[#{val}] "
      $('#result').text _result
      $('.drum_btn').css 'display':'block'

    $('.drum_btn').on 'click', ->
      _mvp = self.staffs[_.indexOf(self.votes, _.max(self.votes))]
      console.log _mvp
      $('.container-fluid').html '<div style="font-size:50px;">集計中...</div>'
      $('#drum')[0].play()
      setTimeout =>
        $('.container-fluid').html """<img src="image/#{_mvp}.jpg" style="width:100%;">"""
      , 6000





