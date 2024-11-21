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

#US06
Feature: US06 - Como ciudadano peruano, quiero tener acceso al listado de gobiernos regionales en la plataforma, para poder identificar y seleccionar la región de mi interés y conocer 
                más sobre sus proyectos y actividades.

 Scenario: ES16 - Visualización exitosa del listado de gobiernos regionales
  TA01
  Given que un ciudadano peruano autenticado está en la [plataforma]
  When el ciudadano peruano accede a la [sección de "Gobiernos Regionales"]
  Then la plataforma digital debe mostrar una [lista completa de los gobiernos regionales disponibles]
  And permitir al ciudadano peruano seleccionar cualquiera de ellos para ver más detalles sobre sus proyectos

 Examples :
    | Gobiernos Regionales | Detalles de cada región       |                             
    | Lima                 | Área                          |
    | Tacna                | Clima                         |
    | San Martín           | Topografía                    |

 Scenario: ES17 - Listado de gobiernos regionales filtrado por región
  TA02
  Given que un ciudadano peruano desea ver los gobiernos regionales de una [región específica]
  When el ciudadano peruano selecciona un [filtro de búsqueda por región o ubicación geográfica]
  Then la plataforma digital debe mostrar solo los [gobiernos regionales que pertenecen a la región seleccionada]
  And permitir una navegación más focalizada

 Examples :
    | Gobiernos Regionales    |                           
    | Lima                    |
    | Tacna                   |
    | San Martín              | 

 Scenario: ES18 - Mensaje de error al no encontrar gobiernos regionales disponibles
  TA03
  Given que un ciudadano peruano está intentando acceder a la [lista de gobiernos regionales]
  When no hay información disponible sobre gobiernos regionales o hay un problema con la carga de la información
  Then la plataforma digital debe mostrar un [mensaje de error] indicando que no se ha podido cargar la información de los gobiernos regionales 
  And sugerir que el ciudadano peruano intente más tarde o contacte soporte

 Examples :
    | Gobiernos Regionales | Mensaje de error                                       | Sugerencia                        |
    | Sin información      | "Atención : Ocurrió un error al cargar la información" | "Intente más tarde o contáctenos" |

#US07
Feature: US07 - Como ciudadano peruano autenticado, quiero poder visualizar el registro de obras públicas asignadas a un gobierno regional, para informarme sobre el estado y los detalles de 
         los proyectos que se están llevando a cabo en mi región.  

 Scenario: ES19 - Visualización exitosa de obras públicas asignadas a un gobierno regional
  TA01
  Given que el ciudadano peruano autenticado ha seleccionado un [gobierno regional desde el listado]
  When el ciudadano peruano accede a la [sección de "Obras Públicas" del gobierno regional seleccionado]
  Then la plataforma digital debe mostrar un [registro detallado de las obras públicas] asignadas a ese gobierno regional
  And debe incluir el nombre del proyecto, estado de avance, localización y otros detalles relevantes

 Examples :
    | Gobiernos Regionales | Registro         |
    | Lima                 | Nombre           |
    | Tacna                | Estado de avance |
    | San Martín           | Localización     |
   
 Scenario: ES20 - Filtrado de obras públicas por estado o categoría
  TA02
  Given que el ciudadano peruano desea ver solo ciertos tipos de obras públicas o aquellas con un estado específico de avance
  When el ciudadano peruano aplica [filtros en la vista de obras públicas] (por ejemplo, obras en "Ejecución", "Finalizadas" o por categoría como "Infraestructura vial" o "Educativa")
  Then la plataforma digital debe mostrar únicamente las [obras públicas que coincidan con los criterios seleccionados]

 Examples :
    | Gobiernos Regionales | Registro         | Filtro vista | Filtro categoría     |
    | Lima                 | Nombre           | Ejecución    | Infraestructura vial |
    | Tacna                | Estado de avance | Finalizadas  | Educativa            |
    | San Martín           | Localización     |

 Scenario: ES21 - Mensaje de error al no encontrar obras públicas asignadas
  TA03
  Given que el ciudadano peruano ha seleccionado un [gobierno regional para ver sus obras públicas]
  When no hay obras públicas asignadas o la información no está disponible
  Then la plataforma digital debe mostrar un [mensaje indicando que no se han encontrado obras públicas para ese gobierno regional]
  And sugerir que el ciudadano peruano intente con otro gobierno regional o vuelva más tarde

 Examples :
    | Gobiernos Regionales | Registro        | Mensaje de error                                       | Sugerencia                                       |
    | Lima                 | Sin información | "Atención : Ocurrió un error al cargar la información" | "Intente más tarde o con otro gobierno regional" |
    | Tacna                |  
    | San Martín           |

#US08
Feature: US08 - Como ciudadano peruano, quiero poder consultar el estado detallado del progreso de una obra pública, para conocer el avance, las etapas completadas y cualquier información relevante sobre su ejecución.    

 Scenario: ES22 - Consulta exitosa del estado de una obra pública
  TA01
  Given que un ciudadano peruano ha seleccionado una [obra pública específica] desde el listado
  When accede a la [sección "Estado de Progreso"] de esa obra
  Then la plataforma digital debe mostrar un [informe detallado del progreso de la obra]
  And debe incluir el porcentaje de avance, etapas completadas, plazos de ejecución, y cualquier desviación del cronograma original

 Examples :
    | Gobiernos Regionales | Progreso                           |
    | Lima                 | Porcentaje de avance               |
    | Tacna                | Etapas completadas                 |
    | San Martín           | Plazos de ejecución                |
                           | Desviación del cronograma original |

 Scenario: ES23 - Acceso a informes de avance y fotografías
  TA02
  Given que el ciudadano peruano está consultando el [estado de una obra pública]
  When el ciudadano peruano selecciona la [opción para ver informes de avance o fotografías de la obra]
  Then la plataforma digital debe mostrar los [documentos de progreso], así como [imágenes actualizadas del estado actual de la obra], permitiendo al ciudadano peruano visualizar el desarrollo en tiempo real

 Examples :
    | Gobiernos Regionales | Informes de avance | Fotografías de la obra |
    | Lima                 | Informe1           | Foto1                  |
    | Tacna                | Informe2           | Foto2                  |
    | San Martín           | Informe3           | Foto3                  |

 Scenario: ES24 - Mensaje de error al no encontrar información de la obra
  TA03
  Given que un ciudadano peruano está intentando [consultar el estado de una obra pública]
  When no hay [información disponible sobre el progreso] de la obra debido a un error en la base de datos o falta de actualización
  Then la plataforma digital debe mostrar un [mensaje de error] indicando que no se ha podido obtener información del estado de la obra, 
  And sugerir que el ciudadano peruano intente nuevamente más tarde

 Examples :
    | Gobiernos Regionales | Informes de avance | Fotografías de la obra | Mensaje de error                                       | Sugerencia                                       |
    | Lima                 | Informe1           | Foto1                  | "Atención : Ocurrió un error al cargar la información" | "Intente más tarde o con otro gobierno regional" |
    | Tacna                | Informe2           | Foto2                  | 
    | San Martín           | Informe3           | Foto3                  | 

#US09
Feature: US09 - Como ciudadano peruano, quiero acceder a un mapa de geolocalización que muestre la ubicación de los proyectos, para poder explorar visualmente las obras en mi área y obtener información importante sobre cada una de ellas.  

 Scenario: ES25 - Visualización de múltiples proyectos en el mapa
  TA01
  Given que el ciudadano peruano desea explorar varios proyectos en una región específica
  When accede [al mapa de geolocalización de proyectos]
  Then la plataforma digital debe mostrar la [localización de todos los proyectos en la región seleccionada]
  And debe marcar cada uno con un [ícono distintivo que permita diferenciarlos fácilmente]

 Examples :
    | Gobiernos Regionales | Localización |
    | Lima                 | San Isidro   |
    | Tacna                | Palca        |
    | San Martín           | Tarapoto     |

 Scenario: ES26 - Interacción con el mapa para obtener más información
  TA02
  Given que el ciudadano peruano está visualizando la localización de un proyecto en el mapa
  When hace clic en la [ubicación del proyecto en el mapa]
  Then la plataforma digital debe mostrar un [cuadro emergente con detalles sobre el proyecto] como su estado, fecha de inicio, y un enlace para consultar más información sobre su progreso

 Examples :
    | Gobiernos Regionales | Localización | Cuadro emergente                  |
    | Lima                 | San Isidro   | Estado                            |
    | Tacna                | Palca        | Fecha de inicio                   |
    | San Martín           | Tarapoto     | Enlace para consultar información | 

 Scenario: ES27 - Acceso a la ruta de transporte hacia el proyecto
  TA03
  Given que el ciudadano peruano está visualizando la localización de un proyecto en el mapa
  When selecciona la opción para [ver cómo llegar al proyecto]
  Then la plataforma digital debe mostrar la [ruta más conveniente utilizando un servicio de mapas] incluyendo información sobre el medio de transporte (a pie, en auto, transporte público) y el tiempo estimado de llegada

 Examples :
    | Gobiernos Regionales | Localización | Cuadro emergente                  | Medio de transporte   | Tiempo de llegada |
    | Lima                 | San Isidro   | Estado                            | A pie                 | 11 horas          |
    | Tacna                | Palca        | Fecha de inicio                   | En automóvil          | 2 horas           |
    | San Martín           | Tarapoto     | Enlace para consultar información | En transporte público | 5 horas           |

#US10
Feature : US10 - Como ciudadano peruano, quiero poder descargar la documentación oficial y legalizada de la obra pública que estoy consultando, para tener acceso a información detallada y verificada sobre el proyecto en cuestión y poder realizar un seguimiento adecuado. 
                 
 Scenario: ES28 - Descarga exitosa de la documentación oficial
  TA01
  Given que el ciudadano peruano ha consultado una obra pública específica
  When selecciona la opción de ["Descargar documentación"] y elige el documento deseado (como contrato, informe de avance, etc.)
  Then la plataforma digital debe [iniciar la descarga del archivo correspondiente]
  And mostrar un mensaje de éxito indicando que la descarga se ha realizado correctamente

 Examples :
    | Gobiernos Regionales | Documento deseado | Mensaje de éxito                       |
    | Lima                 | Contrato          | "La descarga se realizó correctamente" |
    | Tacna                | Informe de avance |
    | San Martín           | 

 Scenario: ES29 - Registro de descargas realizadas por el ciudadano peruano
  TA02
  Given que el ciudadano peruano ha descargado varios documentos oficiales
  When accede a su [perfil o historial de descargas]
  Then la plataforma digital debe mostrar un [registro de todas las descargas realizadas], incluyendo el nombre del documento, la fecha de descarga y el formato, permitiendo al ciudadano peruano tener un seguimiento de su actividad

 Examples :
    | Registro de descargas realizadas |                      
    | Nombre                           | 
    | Fecha de descarga                |
    | Formato                          | 

 Scenario: ES30 - Visualización previa del documento antes de la descarga
  TA03
  Given que el ciudadano peruano desea verificar el contenido de un documento oficial antes de descargarlo
  When selecciona la opción de ["Ver documento"] en lugar de "Descargar"
  Then la plataforma digital debe [abrir una vista previa del documento en línea], permitiendo al ciudadano peruano revisar su contenido y luego decidir si procede a descargarlo

 Examples :
    | Ver documento | Vista previa del documento en línea |
    | Documento1    | VistaPrevia1                        | 
