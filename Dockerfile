# Usa una imagen base que contenga Python
FROM python:latest

ENV DISPLAY=host.docker.internal:0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo main.py desde tu sistema de archivos local al directorio de trabajo del contenedor
COPY main.py .

# Instala Pygame y Numpy usando pip
RUN pip install pygame numpy

# Define el comando que se ejecutará cuando el contenedor se inicie
CMD ["python", "main.py"]