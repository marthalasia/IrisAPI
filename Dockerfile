FROM python:3.7.0

WORKDIR /irisApp

COPY ./ /irisApp/

WORKDIR /irisApp/

RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

WORKDIR /irisApp/irisclassifier/

RUN pip3 install .

WORKDIR /irisApp/

RUN ls -la */

EXPOSE 80

CMD ["python3", "app.py"]
