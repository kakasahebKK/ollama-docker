#!/bin/bash

echo "Starting Ollama server..."
ollama serve &
SERVE_PID=$!


echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done

echo "Serving Ollama..."
wait $SERVE_PID