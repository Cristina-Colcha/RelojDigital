from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route("/") 
def home():
    return render_template("index.html")  # Flask busca index.html dentro de la carpeta templates

if __name__ == "__main__":
    # Obtener el puerto desde las variables de entorno, si está disponible (en Railway suele ser así)
    port = int(os.environ.get("PORT", 5000))  # 5000 es el valor por defecto si no se encuentra el puerto
    # Ejecutar la aplicación escuchando en todas las interfaces
    app.run(host="0.0.0.0", port=port, debug=True)
