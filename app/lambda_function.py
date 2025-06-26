import json

def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": json.dumps({"message": "Yahooooo"}),
        "headers": {"Access-Control-Allow-Origin": "*"}
    }

