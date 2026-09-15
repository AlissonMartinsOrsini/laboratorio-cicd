def lambda_handler(event, context):
    return event["Nome"]

print(lambda_handler({"Nome": "Alisson"}, {}))
print(lambda_handler({"Nome": "Felipe"}, {}))
print(lambda_handler({"Nome": "Julio"}, {}))