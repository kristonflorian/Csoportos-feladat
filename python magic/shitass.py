import json, random
data = []
with open('SearchWastePoints.json', 'r', encoding="utf-8") as f:
    d = json.load(f)
    for trashmachine in d:
       data.append(f'INSERT INTO machines(fillpercentage,zipcode,machineaddress) VALUES({random.randint(0,100)},{trashmachine['zipCode']},"{trashmachine['address']}");\n')
       if not any(f"VALUES({trashmachine['zipCode']}" in machine for machine in data):
            data.append(f'INSERT INTO settlements(zipcode,settlementname) VALUES({trashmachine['zipCode']},"{trashmachine['city']}");\n')
with open('output.sql', 'w', encoding="utf-8") as f:
    f.writelines(sorted(data, key=len))
