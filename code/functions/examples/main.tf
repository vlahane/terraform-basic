variable "object" {
  type = object({
    games : tuple([
      string,
      string,
      string,
    ]),
    id : number,
    name : string,
  })
  default = {
    id : 1001
    name : "Vishal"
    games : ["Cricket", "Cycling", "Football"]
  }
}

variable "mapOfNumber" {
  type = map(number)
  default = {
    roll = 001
    age  = 25
  }
}

variable "mapOfString" {
  type = map(string)
  default = {
    1 = "Index1"
    2 = "Index2"
  }
}

variable "mapOfObject" {
  type = map(object({
    id   = number
    name = string
    games = tuple([
      string,
      string,
      number,
    ])
  }))
  default = {
    1 = {
      id : 1001
      name : "Vishal"
      games : ["Cricket", "Cycling", 1000]
    }
    2 = {
      id : 1001
      name : "Vishal"
      games : ["Cricket", "Cycling", 2000]
    }
  }
}

variable "listOfStrings" {
  type    = list(string)
  default = ["Vishal", "John", "Ned"]
}
