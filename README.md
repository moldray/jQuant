## add a row to DataFrame

```
using Feather

df = Feather.read("xxx.feather")

push!(df, [...])

Feather.write("yyy.feather", df)
```