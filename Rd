from graphviz import Digraph

# Create a mind map for Module 1
dot = Digraph(comment="Module 1 Mind Map", format='png')
dot.attr(rankdir='LR', size='8')

# Main node
dot.node('Module1', 'Module 1: OSI Security & Basics', shape='ellipse', style='filled', color='lightblue')

# Threat vs Attack
dot.node('ThreatAttack', 'Threat vs Attack')
dot.node('Threat', 'Threat:\nPotential harm (natural or intentional)')
dot.node('Attack', 'Attack:\nActual harmful action, intentional')

dot.edges([('ThreatAttack', 'Threat'), ('ThreatAttack', 'Attack')])
dot.edge('Module1', 'ThreatAttack')

# OSI Security Architecture
dot.node('OSI', 'OSI Security Architecture')
dot.node('Goal', 'Goal:\nConfidentiality, Integrity, Availability')
dot.edge('OSI', 'Goal')
dot.edge('Module1', 'OSI')

# Security Attacks
dot.node('Attacks', 'Security Attacks')
dot.node('Passive', 'Passive:\nObserve only\n(Eavesdropping, Traffic Analysis)')
dot.node('Active', 'Active:\nChange data\n(Replay, Masquerade, DoS, DDoS)')
dot.edges([('Attacks', 'Passive'), ('Attacks', 'Active')])
dot.edge('Module1', 'Attacks')

# Security Services
dot.node('Services', 'Security Services')
services_list = [
    "Authentication",
    "Access Control",
    "Confidentiality",
    "Integrity",
    "Non-repudiation"
]
for s in services_list:
    dot.node(s, s)
    dot.edge('Services', s)
dot.edge('Module1', 'Services')

# Security Mechanisms
dot.node('Mechanisms', 'Security Mechanisms')
mechs_list = [
    "Encryption",
    "Digital Signature",
    "Traffic Padding",
    "Routing Control"
]
for m in mechs_list:
    dot.node(m, m)
    dot.edge('Mechanisms', m)
dot.edge('Module1', 'Mechanisms')

# Common Threats
dot.node('Threats', 'Common Threats')
dot.node('Phishing', 'Phishing:\nEmail, Spear, Whaling, Smishing, Angler')
dot.node('Ransomware', 'Ransomware:\nScareware, Screen Locker, Encrypting')
dot.edges([('Threats', 'Phishing'), ('Threats', 'Ransomware')])
dot.edge('Module1', 'Threats')

# Network Security Model
dot.node('NetSec', 'Network Security Model')
dot.node('Needs', 'Needs:\nEncryption, Shared Key, Trusted Third Party, Attacker Awareness')
dot.edge('NetSec', 'Needs')
dot.edge('Module1', 'NetSec')

# Render the diagram
file_path = '/mnt/data/module1_mindmap'
dot.render(file_path, cleanup=True)

file_path + '.png'
