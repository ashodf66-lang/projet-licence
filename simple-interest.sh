#!/bin/bash
# Script pour calculer l'intérêt simple (Intérêt = Principal * Taux * Période)

echo "Calculateur d'Intérêt Simple"

# Demander le Principal (P)
read -p "Entrez le montant principal (P) : " P

# Demander le Taux d'intérêt (R)
read -p "Entrez le taux d'intérêt annuel (R) en décimal (ex: 0.05 pour 5%) : " R

# Demander la Période (T)
read -p "Entrez la période de temps (T) en années : " T

# Calculer l'intérêt simple
INTEREST=$(echo "scale=2; $P * $R * $T" | bc)

echo "---"
echo "Principal : $P"
echo "Taux : $R"
echo "Période : $T années"
echo "L'intérêt simple est : $INTEREST"
