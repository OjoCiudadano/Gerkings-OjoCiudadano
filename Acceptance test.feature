#US01
Feature: US01 - Como ciudadano peruano, quiero crear una cuenta dentro de la plataforma, para tener control total sobre mi acceso, perfil y seguridad de mi información privada.
 
 Scenario: ES01 - Redirección a la pantalla de crear cuenta
  TA01
  Given el ciudadano peruano se encuentra en la [página principal de la plataforma]
  When hace clic en el [botón de "Iniciar Sesión"]
  And hace clic en el [enlace "Regístrate aquí"]
  Then la plataforma digital debe redirigirlo a la [pantalla de "Crear cuenta"]
 
 Examples :
    | Pantalla de Crear cuenta |
    | Crear cuenta             |
 
 Scenario: ES02 - Creación de cuenta exitosa con información válida
  TA02
  Given el ciudadano peruano está en la [pantalla de "Crear cuenta"]
  When completa los [campos requeridos] con [datos válidos]
  And hace clic en el [botón "Crear cuenta"]
  Then la plataforma digital debe mostrar el [mensaje "Cuenta creada exitosamente"]
  And redirigirlo a la [pantalla principal de inicio]
 
 Examples :
    | Usuario | Contraseña  | Mensaje                      | Pantalla principal de inicio |
    | Marco   | Password450 | "Cuenta creada exitosamente" | Inicio                       |

 Scenario: ES03 - Error de creación de cuenta por datos inválidos
  TA03
  Given el ciudadano peruano está en la [pantalla de "Crear cuenta"]
  When completa los [campos requeridos] con [datos inválidos]
  And hace clic en el [botón "Crear cuenta"]
  Then la plataforma digital debe mostrar el [mensaje "Atención: El usuario y/o contraseña introducidos no son válidos"]

 Examples :
    | Usuario | Contraseña | Mensaje                                                               |
    | Marco   | Password450 | "Atención : El usuario y / o contraseña introducidos no son válidos" |

#US02
Feature: US02 - Como ciudadano peruano, quiero poder autenticarme en la plataforma digital de gobiernos regionales mediante mi correo electrónico y contraseña, para 
                asegurarme de que tengo acceso exclusivo a la información de los proyectos en ejecución y mantener la privacidad de mis datos.  

 Scenario: ES04 - Redirección a la pantalla de iniciar sesión
  TA01
  Given que el ciudadano peruano se encuentra en la [página principal de la plataforma]
  When hace clic en el [botón de "Iniciar Sesión"]
  Then la plataforma digital debe redirigirlo a la [pantalla de "Iniciar Sesión"]

 Examples :
    | Usuario | Contraseña   | Pantalla de inicio de sesión |
    | Marco   | Password450  | Pantalla de iniciar sesión   |

 Scenario: ES05 - Inicio de sesión exitoso con credenciales válidas
  TA02
  Given que el ciudadano peruano se encuentra en la [pantalla de "Iniciar Sesión"]
  When ingresa los [campos requeridos] con [datos válidos] (correo electrónico y contraseña)
  And hace clic en el [botón de "Iniciar Sesión"]
  Then la plataforma digital debe mostrar el [mensaje "Sesión iniciada correctamente"]

 Examples :
    | Usuario | Contraseña   | Mensaje                         |
    | Marco   | Password450  | "Sesión iniciada correctamente" |
