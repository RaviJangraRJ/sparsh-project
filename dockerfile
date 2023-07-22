FROM python:3.9-slim
COPY generate_numbers.sh .
COPY apihit.py .
RUN chmod u+x generate_numbers.sh
RUN chmod u+x apihit.py
RUN pip install flask
RUN pip install jsonify
EXPOSE 5000
CMD ["python3", "apihit.py"]
