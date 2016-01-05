FROM python:2.7
RUN pip install flask lxml werkzeug==0.10.4
RUN mkdir /faux-aws
ADD data /data
ADD services /faux-aws/services
ADD common /faux-aws/common
ADD faux-aws.py /faux-aws/faux-aws.py
EXPOSE 5001
CMD ["python", "/faux-aws/faux-aws.py"]
