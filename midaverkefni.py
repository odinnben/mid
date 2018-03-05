from bottle import run, route, template, static_file, error
import requests,datetime


response = requests.get('http://apis.is/petrol')


data = response.json()
odyrtben= data["results"][0]
for stod in data["results"]:
    if stod["bensin95"] < odyrtben["bensin95"]:
        odyrtben=stod

odyrtdi= data["results"][0]
for stod in data["results"]:
    if stod["diesel"] < odyrtdi["diesel"]:
        odyrtdi=stod
t = data["timestampPriceCheck"]
t = datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S.%f')
t = t.strftime('%H:%M:%S %d/%m/%Y')

@route('/')
def index():
    return template('smok',t=t,data=data,odyrtben=odyrtben,odyrtdi=odyrtdi)

@route('/company/<slod>')
def company(slod):
    til = False
    for stod in data['results']:
        if slod == stod['company']:
            til = True
            break
    if til == True:
        return template('fyrir', slod=slod , data=data)
    else:
        return '<h1>Síðan sem þú bast um er ekki til...'


@route('/info/<ok>')
def info(ok):
    return template('info',ok=ok, data=data)

@error(404)
@error(500)
def error(error):
    return '<h1>Síðan sem þú bast um er ekki til...'

@route('/static/<filename>')
def static_server(filename):
    return static_file(filename, root=('./static_files'))

run(host="0.0.0.0", port=int(os.environ.get("PORT")))
