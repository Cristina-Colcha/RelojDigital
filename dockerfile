# Usa la imagen oficial de Python como base
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . /app

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecutará tu aplicación Flask
EXPOSE 5001

# Ejecuta la aplicación Flask
CMD ["python", "app.py"]
