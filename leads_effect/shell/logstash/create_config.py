import os
import string

config_file = './conf/' + 'logstash.conf'

template = string.Template(open(config_file).read())
result = template.substitute(
    {
        'CNF_DIR': os.environ['CNF_DIR'],
        'DATA_DIR': os.environ['DATA_DIR'],
        'INPUT_FILE_PATH': os.environ['INPUT_FILE_PATH'],
        'SINCEDB_DIR': os.environ['SINCEDB_DIR'],
        'BOOTSTRAP_SERVERS': os.environ['BOOTSTRAP_SERVERS'],
        'TOPIC_ID': os.environ['TOPIC_ID'],
    })
print(result)