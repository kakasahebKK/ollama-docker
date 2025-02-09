#!/bin/bash

echo "Waiting Ollama server..."
ollama serve &

echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done

echo "Pulling Model deepseek-r1:7b..."
ollama pull deepseek-r1:7b
echo "Pulled Model deepseek-r1:7b"