import matplotlib.pyplot as plt


categories = [
    "Lymphoma", "Leukemia", "Myeloma", "Testis cancer", "Bile duct cancer",
    "Brain cancer", "Esophageal cancer", "Breast cancer", "Lung cancer",
    "Pancreatic cancer", "Head and Neck cancer", "Kidney cancer", "Bladder cancer",
    "Uncategorized", "Thyroid cancer", "Skin cancer", "Neuroblastoma", "Non-cancerous",
    "Rhabdoid", "Sarcoma", "Uterine cancer", "Gallbladder cancer", "Bone cancer", "Liver cancer",
    "Ovarian cancer", "Colorectal cancer", "Prostate cancer", "Gastric cancer",
    "Cervical cancer", "Adrenocortical cancer"
]
values = [
    70.3, 19.5, 19.4, 6.2, 3.5, 3.4, 3.1, 3.0, 2.8, 2.8, 2.6, 2.6, 2.5,
    2.4, 2.2, 2.1, 2.0, 2.0, 2.0, 2.0, 2.0, 1.9, 1.8, 1.8, 1.7, 1.4, 1.4, 1.3, 1.2, 0.7
]

# Make sure the length matches
categories = categories[:len(values)]
assert len(categories) == len(values), "The lengths of categories and values do not match."

# Create figure
plt.figure(figsize=(14, 6))

# bar setting
colors = ['dodgerblue' if category != 'Leukemia' else 'red' for category in categories]
bars = plt.bar(categories, values, color=colors)

# x and y lables
plt.xlabel('Cell Line Categories', fontsize=14, fontweight='bold')  
plt.ylabel('nTPM', fontsize=14, fontweight='bold')  

# xtick settings########################################
plt.xticks(rotation=90, fontsize=12)
ax = plt.gca()
xtick_labels = ax.get_xticklabels()
for label in xtick_labels:
    if label.get_text() == "Leukemia":
        label.set_fontsize(12)
        label.set_color('red')
plt.xticks(rotation=45)

# ytick settings #######################################
plt.yticks(fontsize=12)

plt.title('RNA specificity: Group enriched (Leukemia, Lymphoma, Myeloma)')
plt.xticks(rotation=45)
plt.tight_layout()

# label data of each column #############################
for bar in bars:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.5, f'{yval}', ha='center', fontsize=10)

plt.show()


# --------------------------------------------------------------------------------------------------- #
categories2 = [
    "KOPN-8", "CCRF-SB", "EoL-1", "BV-173", "PLB-985",
    "OCI-M2", "HEL", "K-562", "JURKAT", "Ku812",
    "THP-1", "MEG-01", "UKE-1", "HMC-1", "HPB-ALL",
    "EM-2", "Jurkat E6.1", "SKNO-1", "HAP1", "BDCM"
]
values2 = [
    178.2, 117.4, 54.2, 22.8, 11.5,
    5.8, 3.0, 2.5, 2.4, 2.3,
    2.2, 2.1, 2.0, 1.9, 1.8,
    1.7, 1.6, 1.4, 1.2, 0.7
]

# Make sure the length matches
categories2 = categories2[:len(values2)]
assert len(categories2) == len(values2), "The lengths of categories and values do not match."

# Create figure
plt.figure(figsize=(14, 6))

# bar setting
colors = ['purple' if category != 'K-562' else 'red' for category in categories2]
bars = plt.bar(categories2, values2, color=colors)

# x and y labels
plt.xlabel('Leukemia Cell Lines', fontsize=14, fontweight='bold')
plt.ylabel('nTPM', fontsize=14, fontweight='bold')

# xticks settings ######################################
plt.xticks(rotation=90, fontsize=12)
ax = plt.gca()
xtick_labels = ax.get_xticklabels()
for label in xtick_labels:
    if label.get_text() == "K-562":
        label.set_fontsize(12)
        label.set_color('red')
plt.xticks(rotation=45)

# yticks settings ######################################
plt.yticks(fontsize=12)

# title ################################################
plt.tight_layout()

# label data of each column #############################
for bar in bars:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.5, f'{yval}', ha='center', fontsize=10)

plt.show()