from flask import Flask
app = Flask(__name__)

from flask import render_template

from temperature import TemperatureSensor

sensor = TemperatureSensor()

@app.route('/temperature/')
def hello():
    temp_c = sensor.read_temp_c()
    message_froid = 'il fait froid'
    message_chaud = 'il fait chaud'
    message_neutre = 'il fait neutre'
    message = ''
    if temp_c < 20 :
        message = message_froid
    elif temp_c > 30 :
        message = message_chaud
    else :
        message = message_neutre
    return render_template('index.html', message=message, temp_c=temp_c)
