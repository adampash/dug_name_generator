Duggarify = require '../duggarify'

describe 'Duggarify', ->
  describe 'vowel recognition', ->
    it "adam", ->
      name = "Adam"
      Duggarify.vowel(name).should.eq true
    it "ellen", ->
      name = "ellen"
      Duggarify.vowel(name).should.eq true
    it "lacey", ->
      name = "lacey"
      Duggarify.vowel(name).should.eq false

  describe 'double consonant recognition', ->
    it "scott", ->
      name = "scott"
      Duggarify.double_cons(name).should.eq true
    it "adam", ->
      name = "adam"
      Duggarify.double_cons(name).should.eq false
    it "lacey", ->
      name = "lacey"
      Duggarify.double_cons(name).should.eq false

  describe 'J recognition', ->
    it "jane-claire", ->
      name = "jane-claire"
      Duggarify.j_start(name).should.eq true
    it "adam", ->
      name = "adam"
      Duggarify.j_start(name).should.eq false

  describe 'existing', ->
    it "joshua", ->
      name = "joshua"
      Duggarify.exists(name).should.eq true
    it "adam", ->
      name = "adam"
      Duggarify.exists(name).should.eq false
    it "michelle", ->
      name = "michelle"
      Duggarify.exists(name).should.eq true

  describe 'duggarification', ->
    it "scott", ->
      name = "scott"
      Duggarify.name(name).should.eq "J'cott"
    it "adam", ->
      name = "adam"
      Duggarify.name(name).should.eq "Jadam"
    it "lacey", ->
      name = "lacey"
      Duggarify.name(name).should.eq "Jacey"
    it "johannah", ->
      name = "johannah"
      Duggarify.name(name).should.eq "Johannah Faith"
    it "jane-claire", ->
      name = "Jane-Claire"
      Duggarify.name(name).should.eq "Jane-Claire Bob"
    it "michelle", ->
      name = "michelle"
      Duggarify.name(name).should.eq "Michelle"
    it "grandma", ->
      name = "grandma"
      Duggarify.name(name).should.eq "Grandma"

