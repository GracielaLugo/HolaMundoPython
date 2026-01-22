from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def home():
    """
    Ruta principal.
    """
    texto = os.environ.get('MENSAJE', 'Hola Mundo (Default en Docker)')
    
    return jsonify({
        "status": "success",
        "mensaje": texto,
        "platform": "Docker Container"
    })

if __name__ == '__main__':
    # Obtenemos el puerto del entorno o usamos el 5000 por defecto
    port = int(os.environ.get('PORT', 5000))

    app.run(host='0.0.0.0', port=port)
