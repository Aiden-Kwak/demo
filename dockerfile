FROM public.ecr.aws/lambda/python:3.12

RUN echo "1free2"

COPY requirements.txt ./
RUN pip install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY app/* ${LAMBDA_TASK_ROOT}/

CMD ["lambda_function.lambda_handler"]

