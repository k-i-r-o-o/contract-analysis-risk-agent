# risk-agent/handler.py
import json
import logging
from .core import process_comparison

logging.basicConfig(level=logging.INFO)

def lambda_handler(event, context):
    logging.info(f"Received event: {event}")
    result = process_comparison(event)
    return {"statusCode": 200, "body": json.dumps(result)}
