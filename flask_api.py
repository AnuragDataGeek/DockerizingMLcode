import sys
import os.path
import json
from collections import OrderedDict
import pickle
from flask import Flask,render_template,request
from flask import request

#sys.path.append('../')
import telecom

#app = Flask(__name__)

#@app.route('/predict_topic',methods=['POST'])
def output_json():
    #pkl_filename = "pickle_model.pkl"
    #with open(pkl_filename, 'rb') as file:
        #pickle_model = pickle.load(file)
    json_data=telecom.clustering()
    print(type(json_data))
    #print(json_data)

output_json()

#if __name__ == "__main__":
    #app.run(host="0.0.0.0", port = 5000, debug=True)
