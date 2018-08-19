# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    end
  if @url == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en el index! </h1>']]
    end
  if @url == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en otro landing! </h1>']]
    end
  else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
run MiPrimeraWebApp.new

# Si se ingresa a la url /index:
# Agregar un codigo de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de titulo que contenga un texto
# "Estas en el Index!".

# Si se ingresa a la url /otro:
# Agregar un codigo de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de titulo que contenga un texto
# "Estas en otro landing!".

# Si se ingresa a cualquier otra url:
# Agregar un codigo de respuesta 404.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body el archivo 404.html creado al inicio.
