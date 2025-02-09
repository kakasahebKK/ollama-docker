FROM ollama/ollama

COPY ./pull-models.sh .
RUN chmod +x pull-models.sh
RUN ./pull-models.sh

COPY ./entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 11434

ENTRYPOINT ["./entrypoint.sh"]
