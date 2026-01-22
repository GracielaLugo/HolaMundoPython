# 1. Imagen base
FROM python:3.9-slim

# 2. Directorio de trabajo
WORKDIR /app

# 3. Copiar primero el archivo de requerimientos (mejora la velocidad de construcción)
COPY requirements.txt .

# 4. Instalar las librerías necesarias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar todo el contenido del proyecto a la carpeta /app
COPY . .

# 6. Exponer el puerto que usa Flask (Render suele usar el 10000 o 5000)
EXPOSE 10000

# 7. Ejecutar la aplicación (asegúrate de usar el nombre correcto: app.py o main.py)
CMD ["python", "app.py"]
