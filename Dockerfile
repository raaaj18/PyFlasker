FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt . 
COPY app.py app.py
RUN groupadd -r gfg &&  \
    useradd -r -g gfg pythongfg && \
    #added a non-root user to run for better security
    pip install -r requirements.txt && \
    chown -R pythongfg:gfg /app 
    #give the permission to the user to access the app directory

EXPOSE 80
USER pythongfg 
#switch to the non-root user to run the application
CMD [ "python", "app.py" ]