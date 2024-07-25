# 3. Cho dict như sau:
people = {
    "Jack": 45, 
    "Amy": 15, 
    "Ben": 29,
    "Emma": 71
}

# 3.1 In ra người già nhất
max_age = max(people.values())

for name, age in people.items():
    if max_age == age:
        print(f"Người già nhất: {name}")
        break 

# Return: Người già nhất: Emma