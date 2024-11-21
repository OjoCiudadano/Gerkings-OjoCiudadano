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

 Scenario: ES06 - Error de inicio de sesión por credenciales incorrectas
  TA03 
  Given que el ciudadano peruano está intentando iniciar sesión en el [portal]
  When ingresa un [correo electrónico o contraseña incorrectos]
  And hace clic en el [botón de "Iniciar Sesión"]
  Then la plataforma digital debe mostrar el [mensaje "Atención: El usuario y/o contraseña introducidos no son válidos"]

 Examples :
    | Usuario | Contraseña  | Mensaje                                                              |
    | Marco   | Password450 | "Atención : El usuario y / o contraseña introducidos no son válidos" |
     
#US03
Feature: US03 - Como ciudadano peruano, quiero poder autenticarme en la plataforma digital de gobiernos regionales mediante mi correo electrónico y contraseña, para asegurarme 
                de que tengo acceso exclusivo a la información de los proyectos en ejecución y mantener la privacidad de mis datos.

 Scenario: ES07 - Redirección a la pantalla de Recuperar contraseña
 TA01
 Given que el ciudadano peruano se encuentra en la [página principal de la plataforma]
 When hace clic en el [botón de "Iniciar Sesión"]
 And hace clic en el [enlace "Haz click aquí"] en la pantalla de inicio de sesión
 Then la plataforma digital debe redirigirlo a la [pantalla de "Recuperar contraseña"]

 Examples :
    | Pantalla de Recuperar contraseña |
    | Recuperar contraseña             |

 Scenario: ES08 - Recuperación de contraseña exitosa
  TA02
  Given que el ciudadano peruano está en la [pantalla de "Recuperar contraseña"]
  When llena los [campos de correo y nueva contraseña] con datos válidos
  And hace clic en el botón "Restablecer contraseña"
  Then la plataforma digital debe mostrar el [mensaje "Contraseña cambiada exitosamente"]
  And actualizar la [contraseña]
  And redirigir al ciudadano peruano a la [página principal]

 Examples :
    | Usuario | Contraseña  | Mensaje                             | Página principal |
    | Marco   | Password450 | "Contraseña cambiada exitosamente"  | Inicio           |

 Scenario: ES09 - Error en la recuperación de contraseña debido a datos inválidos 
  TA03
  Given que el ciudadano peruano está en la [pantalla de "Recuperar contraseña"]
  When completa los [campos de correo o nueva contraseña] con datos inválidos
  And hace clic en el [botón "Restablecer contraseña"]
  Then la plataforma digital debe mostrar el [mensaje "Atención: El usuario y/o contraseña introducidos no son válidos"]

 Examples :
    | Usuario | Contraseña   | Mensaje                                                              | Página principal |
    | Marco   | Password450  | "Atención : El usuario y / o contraseña introducidos no son válidos" | Inicio           |

#US04
Feature: US04 - Como ciudadano peruano, quiero poder actualizar mi perfil en la plataforma, para mantener mi información personal actualizada y asegurarme de que mis datos estén 
                correctos y sean accesibles cuando los necesite. 

 Scenario: ES10 - Actualización exitosa del perfil
  TA01
  Given que un ciudadano peruano autenticado está en la [página de edición de perfil]
  When el ciudadano peruano modifica los [campos de su perfil] (como nombre, dirección o teléfono) con [información válida] 
  And presiona el [botón "Guardar cambios"]
  Then la plataforma digital debe [actualizar los datos del perfil] 
  And mostrar un [mensaje de éxito] indicando que los cambios han sido guardados correctamente

 Examples :
    | Modificar  | Mensaje                                        |
    | Nombre     | "Los cambios han sido guardados correctamente" |
    | Dirección  | "Los cambios han sido guardados correctamente" |
    | Teléfono   | "Los cambios han sido guardados correctamente" |

 Scenario: ES11 - Error de actualización por campos incompletos
  TA02
  Given que un ciudadano peruano autenticado está intentando actualizar su [perfil]
  When el ciudadano peruano deja uno o más [campos obligatorios] en blanco 
  And presiona el [botón "Guardar cambios"]
  Then la plataforma digital debe mostrar un [mensaje de error] indicando que los campos faltantes deben ser completados 
  And no permitir la actualización hasta que se ingrese toda la información requerida

 Examples :
    | Usuario         | Contraseña     | Mensaje                                                              |
    | Sin Información | Sin información| "Atención : El usuario y / o contraseña introducidos no son válidos" |

 Scenario: ES12 - Error de actualización por formato incorrecto en los datos
  TA03
  Given que un ciudadano peruano autenticado está intentando actualizar su [perfil]
  When el ciudadano peruano ingresa [información en un formato incorrecto] (por ejemplo, un número de teléfono con letras o un correo electrónico sin formato válido) 
  And presiona el [botón "Guardar cambios"]
  Then la plataforma digital debe mostrar un [mensaje de error] especificando qué campo contiene un formato inválido 
  And no permitir la actualización hasta que la información sea corregida

 Examples :
    | Modificar | Mensaje                                                     |
    | Teléfono  | "Atención : El teléfono introducido no es válido"           |
    | Correo    | "Atención : El correo electrónico introducido no es válido" |
    
#US05
Feature: US05 - Como nuevo ciudadano peruano, quiero poder eliminar mi perfil de la plataforma, para tener control total sobre mi información personal y la opción de cerrar mi cuenta 
                de manera definitiva si así lo deseo.

 Scenario: ES13 - Eliminación exitosa del perfil
  TA01
  Given que un ciudadano peruano autenticado ha decidido eliminar su [cuenta] y está en la [página de configuración de su perfil]
  When el ciudadano peruano confirma la eliminación de su cuenta
  And presiona el [botón "Eliminar perfil"]
  Then la plataforma digital debe [eliminar permanentemente la cuenta y toda la información asociada] 
  And cerrar la sesión automáticamente 
  And mostrar un [mensaje de confirmación] indicando que el perfil ha sido eliminado con éxito

 Examples :
    | Página de configuración de perfil | Mensaje                                |                                 
    | Eliminar perfil                   | "El perfil fue eliminado exitosamente" |

 Scenario: ES14 - Confirmación antes de la eliminación del perfil
  TA02
  Given que un ciudadano peruano autenticado ha decidido eliminar su [cuenta]
  When el ciudadano peruano selecciona la [opción para eliminar su perfil]
  Then la plataforma digital debe mostrar un [mensaje de advertencia] solicitando confirmación de la acción, explicando que la eliminación es irreversible
  And solo proceder si el ciudadano peruano confirma la eliminación

 Examples :
    | Página de configuración de perfil | Mensaje                                                        |                                  
    | Eliminar perfil                   | "Atención : Está seguro de eliminar su perfil permanentemente" |

 Scenario: ES15 - Error al intentar eliminar el perfil por contraseña incorrecta
  TA03
  Given un ciudadano peruano autenticado está intentando eliminar su [cuenta]
  When la plataforma digital requiere que el ciudadano peruano ingrese su [contraseña] para confirmar la eliminación 
  And el ciudadano peruano ingresa una [contraseña incorrecta]
  Then la plataforma digital debe mostrar un [mensaje de error] indicando que la contraseña ingresada no es válida 
  And no permitir la eliminación del perfil hasta que se ingrese la contraseña correcta

 Examples :
    | Contraseña  | Mensaje                                           |
    | Password450 | "Atención : La contraseña ingresada no es válida" |
