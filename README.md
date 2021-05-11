# Introducción

Esta aplicación está escrita en Ruby on Rails y tiene como finalidad que un usuario pueda consultar el monto de una cuota para un préstamo.
Esta aplicación se realizó ya que muchos usuarios están interesados en saber el monto a pagar sobre un crédito de forma sencilla y simple sobre una categoría especifica (créditos personales, Vehículo o vivienda).

El objetivo de esta es que sea simple de usar y que el usuario pueda empezar los trámites correspondientes para iniciar el proceso de la solicitud de crédito.
Además, se puedan hacer gráficos sobre colocaciones en forma mensual, semanal u otros 
Es importante que la aplicación sea simple de usar y que los usuarios tengan la información de forma inmediata 

# Modelos

La aplicación consta con tres modelos según se indica  a continuación:

- user: modela a cada usuario de la aplicación. Hace uso de la gema `devise` para hacer un registro de usuario y tener login.

- Loan: Es donde se deben registran la información principal del crédito como son monto del crédito, intereses y plazo.

- Source of income: Es en este modelo donde se detalla la información financiera del usuario (ingresos totales y egresos, la diferencia entre ingresos y egresos debería ser mayor al monto de la cuota a pagar para que el crédito sea aprobado si no es así el sistema deniega el crédito. Este modelo está asociado con la información del modelo Loan. 

Controladores*****************************************************

- rooms: es un crud que está a medias de los rooms. Permite crear, listar y ver salas.

- room_messages: T

# Dependencias