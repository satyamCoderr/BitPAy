#implement blockchain

from base64 import encode
import datetime
import hashlib
import json
from flask import Flask,jsonify, request
from json import JSONEncoder

class Blockchain:

    class DateTimeEncoder(JSONEncoder):
        def default(self, obj):
            if isinstance(obj, (datetime.date, datetime.datetime)):
                return obj.isoformat()

    def __init__(self):
        self.chain = []
        self.create_block(owner = "Arya", Reg_no = "20105111908", proof = 1, previous_hash="0")
    
    def create_block(self, owner,Reg_no, proof, previous_hash):
        time = datetime.datetime.now()
        block = {
            "owner":owner,
            "Reg_no":Reg_no,
            "index":len(self.chain)+1,
             "timestamp": time,
             "proof":proof,
             "previous_hash":previous_hash
        }
        self.chain.append(block)
        return block

    def proof_of_word(self, previous_proof):
        new_proof = 1
        check_proof = False
        while(check_proof is False):
            hash_val = hashlib.sha256(str(new_proof**2 - previous_proof**2).encode()).hexdigest()
            if(hash_val[0:4]=="0000"):
                check_proof = True
            else:
                new_proof += 1
        return new_proof
    
    def hash(self, block):
        encode_block = json.dumps(block,cls=self.DateTimeEncoder).encode()
        return hashlib.sha256(encode_block).hexdigest()
    
    def is_chain_valid(self, chain):
        previous_block = chain[0]
        block_index = 1
        while(block_index < len(chain)):
            block = chain[block_index]
            if(block["previous_hash"] != self.hash(previous_block)):
                return False
            previous_proof = previous_block["proof"]
            proof = block["proof"]
            hash_val = hashlib.sha256(str(proof**2 - previous_proof**2).encode()).hexdigest()
            if(hash_val[0:4]!="0000"):
                return False
            previous_block = block
            block_index += 1
        return True
    
    def get_last_block(self):
        return self.chain[-1]

Blockchain = Blockchain()

app  = Flask(__name__)
@app.route("/")
def page():
    return "<p>Hello Blockchain</p>"


@app.route("/get_chain", methods=["GET"])
def get_chain():
    response ={
        "chain": Blockchain.chain,
        "length": len(Blockchain.chain)
    }
    return jsonify(response),200

@app.route("/is_valid", methods = ["GET"])
def is_valid():
    is_valid = Blockchain.is_chain_valid(Blockchain.chain)
    if(is_valid):
        response = {
            "message":"All Good The ledger is valid",
        }
    else:
        response = {
            "message":"All Good The ledger is not valid",
        }
    return jsonify(response), 200

@app.route("/mine_block", methods=["POST"])
def mine_block():
    values = request.get_json()
    required = ["owner", "Reg_no"]
    if not all(k in values for k in required):
        response = {
        "Message": "Missing Values"
        }
        return response, 400
    owner = values["owner"]
    Reg_no = values["Reg_no"]
    previous_block = Blockchain.get_last_block()
    previous_proof = previous_block["proof"]
    proof = Blockchain.proof_of_word(previous_proof)
    previous_hash = Blockchain.hash(previous_block)
    Blockchain.create_block(owner,Reg_no, proof, previous_hash)
    response = {
        "Message": "Record Will be added to the ledger" 
    }
    return jsonify(response), 200


app.run(host = "0.0.0.0",port=8080, debug=True)
