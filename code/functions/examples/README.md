
```
> upper(var.listOfStrings[0])
"VISHAL"
> upper(var.listOfStrings[1])
"JOHN"
> upper(var.listOfStrings[2])
"NED"
```

```
> keys(var.mapOfObject)
tolist([
  "1",
  "2",
])
```

```
> contains(var.listOfStrings,"vishal")
false
> contains(var.listOfStrings,"Vishal")
true
```

```
> merge(var.mapOfNumber,var.mapOfString,var.mapOfObject)
{
  "1" = {
    "games" = [
      "Cricket",
      "Cycling",
      1000,
    ]
    "id" = 1001
    "name" = "Vishal"
  }
  "2" = {
    "games" = [
      "Cricket",
      "Cycling",
      2000,
    ]
    "id" = 1001
    "name" = "Vishal"
  }
  "age" = 25
  "roll" = 1
}
```

```
> lookup(var.mapOfObject,1)
{
  "games" = [
    "Cricket",
    "Cycling",
    1000,
  ]
  "id" = 1001
  "name" = "Vishal"
}
```
```
> lookup(var.mapOfString,1,"NotFound")
"Index1"
> lookup(var.mapOfString,404,"NotFound")
"NotFound"
```