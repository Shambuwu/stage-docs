import json
import matplotlib.pyplot as plt
import statistics

# Lees gegevens uit JSON-bestanden
with open('measurements_with_ogm.json', 'r') as file:
    measurements_with_ogm = json.load(file)

with open('measurements_no_ogm.json', 'r') as file:
    measurements_no_ogm = json.load(file)

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

# Plot de metingen
plt.figure(1)

plt.subplot(211)
plt.plot(range(len(measurements_with_ogm)), measurements_with_ogm, label='Met OGM', color='blue')
plt.plot(range(len(measurements_no_ogm)), measurements_no_ogm, label='Zonder OGM', color='orange')
plt.xlabel('Index')
plt.ylabel('Tijdsduur (ms)')
plt.title('Vergelijking van Metingen')
plt.grid(True)

# Toon gemiddelde en gemiddeld verschil op de plot
plt.axhline(y=average_with_ogm, color='blue', linestyle='--', label=f'Gemiddelde (Met OGM): {average_with_ogm:.2f} ms')
plt.axhline(y=average_no_ogm, color='orange', linestyle='--', label=f'Gemiddelde (Zonder OGM): {average_no_ogm:.2f} ms')
plt.legend()

plt.subplot(212)
plt.bar(['Met OGM', 'Zonder OGM'], [std_dev_with_ogm, std_dev_no_ogm], color=['blue', 'orange'], alpha=0.7)
plt.ylabel('Standaarddeviatie')
plt.title('Vergelijking Standaarddeviatie')

plt.subplots_adjust(hspace=0.5)  # Pas de verticale ruimte tussen de subplots aan

plt.figure(2)

plt.subplot(221)
plt.bar(['Met OGM', 'Zonder OGM'], [variance_with_ogm, variance_no_ogm], color=['blue', 'orange'], alpha=0.7)
plt.ylabel('Variantie')
plt.title('Vergelijking Variantie')

plt.subplot(222)
plt.bar(['Met OGM', 'Zonder OGM'], [minimum_with_ogm, minimum_no_ogm], color=['blue', 'orange'], alpha=0.7)
plt.ylabel('Tijdsduur (ms)')
plt.title('Vergelijking Minimum')

plt.subplot(223)
plt.bar(['Met OGM', 'Zonder OGM'], [maximum_with_ogm, maximum_no_ogm], color=['blue', 'orange'], alpha=0.7)
plt.ylabel('Tijdsduur (ms)')
plt.title('Vergelijking Maximum')

plt.subplots_adjust(hspace=0.5)  # Pas de verticale ruimte tussen de subplots aan

# Sla de plot op als PNG-bestand
plt.savefig('plots.png', dpi=300)

# Toon de plot
plt.show()