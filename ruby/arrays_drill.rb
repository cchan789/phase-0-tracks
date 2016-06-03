def concat(array, item)
  return array << item
end


def method(item_1, item_2, item_3)
  return [item_1, item_2, item_3]
end

# RELEASE 1 EXERCISE
new_york = []
new_york = ["Empire State Building", "Subway", "S.I.", "N.J", "Rockafeller Center"]
# p new_york
new_york.delete_at(2)
# p new_york
new_york.insert(2, "Ellis Island")
# p new_york
new_york.shift
# p new_york
p new_york.include? "Subway"
p new_york.include?("Subway")

Austin = ["Barton Springs", "South Congress Avenue", "University of Texas", "Lady Bird Lake"]

p new_york + Austin
# END RELEASE 1 EXERCISE


p method("dog", "cat", "bird")
p concat(["Coco", "Mara", "Satin"], "cat food")
p concat(["Coco", "Mara", "Satin"], "orange")
p concat(["blue", 3, true], "tree")
