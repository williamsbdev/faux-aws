FROM python:2.7
RUN pip install flask lxml
EXPOSE 5000
RUN mkdir /faux-aws
WORKDIR /faux-aws
ADD faux-aws.py /faux-aws/faux-aws.py
CMD ["python", "/faux-aws/faux-aws.py"]
