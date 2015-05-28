Duggarify =
  name: (name) ->
    orig = name
    name = name.toLowerCase().trim()
    if @exists(name)
      if name in @firsts
        name = @name_map[name]
      return "Michelle" if name is "michelle"
      return "Cousin Amy" if name is "amy"
      return "Grandma" if name is "grandma"
      name = name[1..-1]
    else if @vowel(name)
      name = name
    else if @double_cons(name)
      name = "'#{name[1..-1]}"
    else if @j_start(name)
      name = "#{orig[1..-1]}"
    else
      name = name[1..-1]
    "J#{name}"

  exists: (name) ->
    name.toLowerCase() in @names or name.toLowerCase() in @firsts

  vowel: (name) ->
    vowel_regex = /^[aeiou]/i
    name.match(vowel_regex)?

  double_cons: (name) ->
    return false if @vowel(name)
    double_cons_regex = /^[b-df-hj-np-tv-z]{2}/i
    name.match(double_cons_regex)?

  j_start: (name) ->
    j_regex = /^j/i
    name.match(j_regex)?

  name_map:
    "joshua": "joshua"
    "jim": "jim Bob"
    "michelle": "michelle"
    "amy": "amy"
    "grandma": "grandma"
    "john": "john-David"
    "joseph": "joseph"
    "josiah": "josiah"
    "jedidiah": "jedidiah"
    "jeremiah": "jeremiah"
    "jason": "jason"
    "james": "james Andrew"
    "justin": "justin"
    "jackson": "jackson"
    "jana": "jana"
    "jill": "jill"
    "jessa": "jessa"
    "jinger": "jinger"
    "joy": "joy-Anna"
    "johannah": "johannah Faith"
    "jennifer": "jennifer"
    "jordyn": "jordyn-Grace"
    "josie": "josie"

  names:  [
    "jim Bob"
    "michelle"
    "amy"
    "grandma"
    "joshua"
    "john-David"
    "joseph"
    "josiah"
    "jedidiah"
    "jeremiah"
    "jason"
    "james Andrew"
    "justin"
    "jackson"
    "jana"
    "jill"
    "jessa"
    "jinger"
    "joy-Anna"
    "johannah Faith"
    "jennifer"
    "jordyn-Grace"
    "josie"
  ]

  firsts: [
    "jim"
    "michelle"
    "grandma"
    "amy"
    "joshua"
    "john"
    "joseph"
    "josiah"
    "jedidiah"
    "jeremiah"
    "jason"
    "james"
    "justin"
    "jackson"
    "jana"
    "jill"
    "jessa"
    "jinger"
    "joy"
    "johannah"
    "jennifer"
    "jordyn"
    "josie"
  ]

module.exports = Duggarify
