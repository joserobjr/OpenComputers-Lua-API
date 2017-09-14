

local colors = {
  [0] = "white",  
  [1] = "orange",
  [2] = "magenta",
  [3] = "lightblue",
  [4] = "yellow",
  [5] = "lime",
  [6] = "pink",
  [7] = "gray",
  [8] = "silver",
  [9] = "cyan",
  [10] = "purple",
  [11] = "blue",
  [12] = "brown",
  [13] = "green",
  [14] = "red",
  [15] = "black",

  white = 0,
  orange = 1,
  magenta = 2,
  lightblue = 3,
  yellow = 4,
  lime = 5,
  pink = 6,
  gray = 7,
  silver = 8,
  cyan = 9,
  purple = 10,
  blue = 11,
  brown = 12,
  green = 13,
  red = 14,
  black = 15
}

return colors

---do
---  local keys = {}
---  for k in pairs(colors) do
---    table.insert(keys, k)
---  end
---  for _, k in pairs(keys) do
---    colors[colors[k]] = k
---  end
---end
---
---return colors