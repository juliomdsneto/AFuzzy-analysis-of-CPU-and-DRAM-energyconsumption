#!/bin/bash
for i in {1..10}
do
	for j in {1..10}
	do
	ipmi-dcmi -h 10.0.1.102 -u admin -p lups#431$ --get-system-power-statistics >> "testes1605/inicio/"$i"_inicio.txt"
	sleep 5
	done
	sleep 240 #espera 4 minutos
	for j in {1..10}
	do
	ipmi-dcmi -h 10.0.1.102 -u admin -p lups#431$ --get-system-power-statistics >> "testes1605/meio/"$i"_meio.txt"
	sleep 5
	done
	sleep 240 #espera 4 minutos
	for j in {1..10}
	do
	ipmi-dcmi -h 10.0.1.102 -u admin -p lups#431$ --get-system-power-statistics >> "testes1605/fim/"$i"_fim.txt"
	sleep 5
	done
done
#/proc/cpu
