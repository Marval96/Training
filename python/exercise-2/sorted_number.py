#!/usr/bin/env python

import numpy as np

rng = np.random.default_rng(333)
input_random_numbers = rng.integers(low=0, high=10**3, size=10**2)

print("Los números aleatorios son:")
print(input_random_numbers)


def ordenar(numbers):
    numeros_ordenados = sorted(numbers)
    return numeros_ordenados

numbers = input_random_numbers
numeros_ordenados = ordenar(numbers)

print("El orden de los números aleatorios es:")
print(numeros_ordenados)


