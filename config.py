import os
import json

HOST = "0.0.0.0"
PORT = int(os.getenv('PORT', 443))

# السكرت الجديد تم وضعه هنا كقيمة افتراضية
DEFAULT_USERS = '{"tg": "5c6d1000226b0463ae7ac34be5a72afb"}'

try:
    USERS = json.loads(os.getenv('USERS', DEFAULT_USERS))
except:
    USERS = json.loads(DEFAULT_USERS)

MODES = {
    "classic": False,
    "secure": False,
    "tls": True
}

TLS_DOMAIN = os.getenv('TLS_DOMAIN', 'www.google.com')
AD_TAG = os.getenv('AD_TAG', '')