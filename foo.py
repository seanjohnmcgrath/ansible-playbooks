import boto3
import boto3.session
import botocore.vendored.requests.packages.urllib3 as urllib3


#disable warnings about SSL/no certificates
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

session = boto3.session.Session(profile_name='sean')
endpoint = 'https://10.10.169.116:8082'

s3 = session.resource(service_name='s3', endpoint_url=endpoint, verify=False)

print("Listing existing buckets\n")
# Print out bucket names
for bucket in s3.buckets.all():
    print(bucket.name)


b = s3.Bucket('python_testi2')
b.create()

print("Listing buckets\n")
# Print out bucket names
for bucket in s3.buckets.all():
    print(bucket.name)


b.delete()

print("Listing buckets\n")
# Print out bucket names
for bucket in s3.buckets.all():
    print(bucket.name)
