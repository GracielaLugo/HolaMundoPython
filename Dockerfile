# 1. Usamos una imagen base ligera de Python
FROM python:3.9-slim

# 2. Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos el archivo de script al contenedor
COPY main.py .

# 4. Definimos una variable de entorno por defecto (opcional)
ENV NAME="Mundo"

# 5. Comando para ejecutar la aplicación
CMD ["python", "main.py"]
