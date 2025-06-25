FROM public.ecr.aws/lambda/python:3.12

WORKDIR ${LAMBDA_TASK_ROOT}

# Copy and install requirements
COPY risk-agent/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source
COPY risk-agent/ ./ 

# Handler: file is handler.py, handler is lambda_handler
CMD ["handler.lambda_handler"]
