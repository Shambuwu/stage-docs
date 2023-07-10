import json
from tabulate import tabulate
import statistics

# Lees gegevens uit JSON-bestanden
with open('measurements_with_ogm.json', 'r') as file:
    data_with_ogm = json.load(file)

with open('measurements_no_ogm.json', 'r') as file:
    data_no_ogm = json.load(file)

# Haal de metingen uit de gegevens
measurements_with_ogm = data_with_ogm
measurements_no_ogm = data_no_ogm

# Bereken gemiddelde en standaardafwijking voor elke dataset
average_with_ogm = sum(measurements_with_ogm) / len(measurements_with_ogm)
average_no_ogm = sum(measurements_no_ogm) / len(measurements_no_ogm)

std_dev_with_ogm = statistics.stdev(measurements_with_ogm)
std_dev_no_ogm = statistics.stdev(measurements_no_ogm)

variance_with_ogm = statistics.variance(measurements_with_ogm)
variance_no_ogm = statistics.variance(measurements_no_ogm)

minimum_with_ogm = min(measurements_with_ogm)
minimum_no_ogm = min(measurements_no_ogm)

maximum_with_ogm = max(measurements_with_ogm)
maximum_no_ogm = max(measurements_no_ogm)

# Maak een lijst van de resultaten
results = [
    ["Met OGM", average_with_ogm, std_dev_with_ogm, variance_with_ogm, minimum_with_ogm, maximum_with_ogm],
    ["Zonder OGM", average_no_ogm, std_dev_no_ogm, variance_no_ogm, minimum_no_ogm, maximum_no_ogm]
]

# Genereer de tabel
table = tabulate(results, headers=["Dataset", "Gemiddelde", "Standaarddeviatie", "Variatiescore", "Minimum", "Maximum"], tablefmt="fancy_grid")

# Toon de tabel
print(table)

# Sla de tabel op als een tekstbestand
with open('tabel.txt', 'w') as file:
    file.write(table)