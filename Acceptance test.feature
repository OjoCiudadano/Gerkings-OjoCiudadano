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

#US11
Feature: US11 - Como ciudadano peruano, quiero poder reportar datos desactualizados sobre una obra pública para asegurar que la información reflejada en la plataforma digital esté actualizada y confiable. 

 Scenario: ES31 - Reportar datos desactualizados
  TA01
  Given que el ciudadano peruano detecta [información incorrecta o desactualizada sobre una obra pública]
  When selecciona la opción ["Reportar datos incorrectos"] en la plataforma
  Then la plataforma digital debe permitirle [especificar qué dato es incorrecto y enviar un reporte con una justificación breve]

 Examples :
    | Reportar datos incorrectos |
    | Reporte enviado            |

 Scenario: ES32 - Confirmación del reporte enviado
  TA02
  Given el ciudadano peruano ha enviado [un reporte de datos desactualizados]
  When el reporte es enviado con éxito
  Then la plataforma digital debe mostrar [una notificación de confirmación indicando que el reporte ha sido recibido y está en revisión]

 Examples :
    | Reportar datos incorrectos | Notificación de confirmación |
    | Reporte enviado            | "Su reporte fue recibido"    |

 Scenario: ES33 - Seguimiento del reporte
  TA03
  Given que el ciudadano peruano ha enviado [un reporte de datos desactualizados]
  When accede al [historial de sus reportes]
  Then la plataforma digital debe mostrar [el estado de su reporte (por ejemplo: "En revisión", "Aceptado", "Rechazado")]

 Examples :
    | Gobiernos Regionales | Reportar datos incorrectos | Notificación de confirmación | Estado de reporte |
    | Lima                 | Reporte enviado            | "Su reporte fue recibido"    | "En revisión"     | 
    | Tacna                | Reporte enviado            | "Su reporte fue recibido"    | "Aceptado"        |
    | San Martín           | Reporte enviado            | "Su reporte fue recibido"    | "Rechazado"       |
  
#US12
Feature: US12 - Como ciudadano peruano, quiero poder adjuntar fotos y/o videos como evidencia al enviar un reporte sobre una obra pública, para respaldar la información y facilitar la verificación del problema reportado.

 Scenario: ES34 - Adjuntar evidencia durante el reporte
  TA01
  Given que el ciudadano peruano está llenando [un formulario para reportar una irregularidad o dato incorrecto]
  When selecciona la opción ["Adjuntar evidencia multimedia (fotos y/o videos)"]
  Then la plataforma digital debe permitirle [cargar archivos desde su dispositivo con un límite de tamaño y cantidad, mostrando una vista previa de los archivos seleccionados]

 Examples :
    | Gobiernos Regionales | Adjuntar Evidencia | Vista previa |
    | Lima                 | Foto               | VistaPrevia1 |
    | Tacna                | Video              | VistaPrevia2 |
    | San Martín           |

 Scenario: ES35 - Confirmación de evidencia adjuntada
  TA02
  Given que el ciudadano peruano ha adjuntado [evidencia multimedia al reporte]
  When envía [el reporte con la evidencia cargada]
  Then la plataforma digital debe confirmar [que los archivos se han adjuntado correctamente y el reporte ha sido enviado con éxito, mostrando un mensaje de confirmación]

 Examples :
    | Gobiernos Regionales | Adjuntar Evidencia | Vista previa | Mensaje de confirmación   |
    | Lima                 | Foto               | VistaPrevia1 | "Su reporte fue recibido" |
    | Tacna                | Video              | VistaPrevia2 | "Su reporte fue recibido" |
    | San Martín           |

 Scenario: ES36 - Visualización de evidencia adjunta en el historial de reportes
  TA03
  Given que el ciudadano ha enviado [un reporte con evidencia multimedia]
  When accede a [su historial de reportes]
  Then la plataforma digital debe permitirle [visualizar la evidencia adjunta (fotos y/o videos) que respaldó su reporte, junto con el estado del reporte]

 Examples :
    | Gobiernos Regionales | Adjuntar Evidencia | Vista previa | Mensaje de confirmación   | Historial de reportes |
    | Lima                 | Foto               | VistaPrevia1 | "Su reporte fue recibido" | Foto1                 |
    | Tacna                | Video              | VistaPrevia2 | "Su reporte fue recibido" | Video1                |
    | San Martín           |

#US13
Feature: US13 - Como ciudadano peruano, quiero poder ver un listado de todos los reportes que he enviado sobre las obras públicas, para hacer seguimiento a su estado y verificar las respuestas o acciones tomadas.

 Scenario: ES37 - Visualización básica del listado de reportes enviados
  TA01
  Given que el ciudadano peruano accede [a su cuenta en la plataforma]
  When selecciona la opción ["Ver listado de reportes enviados"]
  Then la plataforma digital debe mostrar [un listado con el título del reporte, la fecha de envío, el estado actual (en revisión, resuelto, etc.), y un enlace para ver más detalles del reporte]

 Examples :
    | Gobiernos Regionales | Listado de reportes enviados |
    | Lima                 | Título                       |
    | Tacna                | Fecha de envío               |
    | San Martín           | Estado actual                |
                           | Enlace para ver más detalles | 

 Scenario: ES38 - Acceso a los detalles de un reporte específico
  TA02
  Given que el ciudadano peruano desea ver [información detallada de un reporte específico]
  When selecciona [un reporte en el listado]
  Then la plataforma digital debe mostrar [los detalles del reporte, incluyendo la evidencia adjunta (si la hay)]

 Examples :
    | Gobiernos Regionales | Detalles del reporte | 
    | Lima                 | Detalle1             |
    | Tacna                | Detalle2             |
    | San Martín           | Detalle3             |

#US14
Feature: US14 - Como ciudadano peruano, quiero poder descargar una copia oficial de los reportes enviados sobre un dato desactualizado en obras públicas, para tener un registro personal y poder presentarlo ante otras instituciones si es necesario.
                 
 Scenario: ES39 - Descarga exitosa de la copia oficial del reporte
  TA01
  Given que el ciudadano peruano ha enviado [un reporte y desea obtener una copia oficial]
  When selecciona la opción ["Descargar"] en la sección de detalles del reporte
  Then la plataforma digital debe generar y permitir [la descarga de un archivo PDF con el contenido completo del reporte, incluyendo la fecha de envío y el estado actual]

 Examples :
    | Descarga archivo PDF |                  
    | Fecha de envío       |
    | Estado actual        |

 Scenario: ES40 - Verificación de formato y contenido del PDF
  TA02
  Given que el ciudadano peruano ha descargado [la copia oficial]
  When abre [el archivo PDF]
  Then debe contener [el título del reporte, la fecha de envío, una descripción detallada de la denuncia, la evidencia adjunta (si corresponde), el estado actual, y una firma o sello digital que certifique la autenticidad del documento]

 Examples :
    | Lo que debe contener el archivo PDF  |
    | Título                               |
    | Fecha de envío                       |
    | Descripción detallada de la denuncia |
    | Evidencia adjunta                    |
    | Estado actual                        |
    | Firma                                |

#US15
Feature: US15 - Como ciudadano peruano, quiero poder compartir los reportes sobre datos desactualizados de las obras públicas con otros ciudadanos, para que más personas puedan estar al tanto. 

 Scenario: ES41 - Compartir reporte exitosamente en redes sociales
  TA01
  Given que el ciudadano peruano ha enviado [un reporte y quiere compartirlo]
  When selecciona la opción ["Compartir"] en el reporte
  Then la plataforma digital debe mostrar [opciones para compartir el enlace del reporte en redes sociales como Facebook, Twitter y Instagram]

 Examples :
    | Compartir |
    | Facebook  |
    | Twitter   |
    | Instagram |

 Scenario: ES42 - Compartir el reporte mediante un enlace directo
  TA02
  Given que el ciudadano peruano desea compartir [el reporte a través de un enlace]
  When selecciona la opción ["Compartir por enlace"]
  Then la plataforma digital debe generar [un enlace único que puede ser copiado y enviado por cualquier plataforma digital de mensajería o correo electrónico, permitiendo que otros ciudadanos accedan al reporte]

 Examples :
    | Compartir por enlace             |
    | Plataforma digital de mensajería |
    | Correo electrónico               |    

#US16
Feature: US16 - Como representante de una institución gubernamental o fiscalizadora, quiero enviar un mensaje al asistente de WhatsApp desde la sección de Centro de ayuda, para obtener información sobre las obras públicas o soporte inmediato acerca de algún error en la página web.

 Scenario: ES43 - Enviar una consulta sobre obras públicas
  TA01
  Given que el representante de una institución gubernamental o fiscalizadora está [en la página web y necesita obtener información sobre obras públicas]
  When accede a la sección de Centro de ayuda y selecciona la opción para enviar un [mensaje al asistente de WhatsApp]
  Then la plataforma digital debe [abrir WhatsApp] automáticamente con un mensaje preconfigurado, permitiendo al representante enviar la consulta sobre una obra pública y recibir una respuesta automatizada con información o enlaces relevantes

 Examples :
    | Centro de ayuda                         | Mensaje preconfigurado        | Consulta sobre una obra pública | Respuesta automatizada |
    | Enviar mensaje al asistente de Whatsapp | "¿Desea enviar una consulta?" | Consulta1                       | Respuesta1             |

 Scenario: ES44 - Reportar un error en la página web
  TA02
  Given el representante de una institución gubernamental o fiscalizadora encuentra [un error en la página web y busca soporte]
  When accede al [Centro de ayuda y elige la opción para contactar al asistente de WhatsApp]
  Then la plataforma digital debe [abrir WhatsApp] con un mensaje preconfigurado para reportar el error en la página, solicitando una breve descripción del problema, y recibir una respuesta automática que indique que el error está siendo investigado

 Examples :
    | Centro de ayuda                         | Mensaje preconfigurado        | Descripción                                           | Reporte de error | Respuesta automatizada             |
    | Enviar mensaje al asistente de Whatsapp | "¿Desea enviar una consulta?" | "¿Podría brindar una breve descripción del problema?" | Reporte1         | "El error está siendo investigado" |

#US17
Feature: US17 - Como representante de una institución gubernamental o fiscalizadora, quiero revisar los términos y condiciones de la política de privacidad de la plataforma, para asegurarme de que los datos de los usuarios se manejen de acuerdo con las normativas vigentes y garantizar la protección de la información.
                 
 Scenario: ES45 - Acceso a los términos y condiciones desde el menú principal
  TA01
  Given que el representante de una institución gubernamental o fiscalizadora necesita consultar los términos y condiciones de la política de privacidad
  When el representante accede a la [sección de "Política de Privacidad" desde el menú principal de la página web]
  Then la plataforma digital debe mostrar un [documento detallado con los términos y condiciones actualizados]
  And permitir al representante leerlos en su totalidad

 Examples :
    | Política de Privacidad |
    | Términos y condiciones actualizados |

 Scenario: ES46 - Descargar una copia de la política de privacidad
  TA02
  Given que el representante de una institución gubernamental o fiscalizadora desea tener una copia de los términos y condiciones de la política de privacidad para revisión externa
  When accede a la [sección de "Política de Privacidad" y selecciona la opción de descarga]
  Then la plataforma digital debe proporcionar la [opción de descargar el documento en formato PDF]
  And permitir que el representante lo almacene y revise fuera de línea

 Examples :
    | Política de Privacidad Descarga |
    | Descargar en formato PDF        |

#US18
Feature: US18 - Como representante de una institución gubernamental o fiscalizadora, quiero enviar un formulario de reclamo desde la sección "Libro de reclamaciones" en la plataforma digital “Ojo Ciudadano”, para reportar formalmente cualquier inconveniente relacionado con la gestión de obras públicas o el uso de la plataforma.  

 Scenario: ES47 - Acceder al formulario desde la sección de Libro de reclamaciones
  TA01
  Given que el representante de una institución gubernamental o fiscalizadora desea presentar un reclamo formal
  When accede a la [sección "Libro de reclamaciones" desde el menú principal de la plataforma]
  Then la plataforma digital debe mostrar un [formulario estructurado con campos como nombre de la institución, motivo del reclamo, detalles específicos y datos de contacto]

 Examples :
    | Libro de reclamaciones   |
    | Nombre de la institución |
    | Motivo del reclamo       |
    | Detalles específicos     |
    | Datos de contacto        |

 Scenario: ES48 - Completar y enviar el formulario de reclamo
  TA02
  Given que el representante de una institución gubernamental o fiscalizadora ha accedido al formulario de reclamación
  When completa todos los campos obligatorios del formulario y selecciona la opción de "Enviar"
  Then debe mostrar una [confirmación de recepción exitosa] al representante

 Examples :
    | Confirmación de recepción           |
    | "Su reclamo fue recibido con éxito" |
        
 Scenario: ES49 - Recibir una copia del reclamo al correo electrónico
  TA03
  Given que el representante de una institución gubernamental o fiscalizadora ha enviado el formulario de reclamo
  When la plataforma digital confirma la recepción del reclamo
  Then debe [enviar un correo electrónico al representante] con un resumen del reclamo presentado

 Examples :
    | Resumen de confirmación de recepción al correo electrónico |
    | Resumen del reclamo presentado                             |
       
#US19
Feature: US19 - Como representante de una institución gubernamental o fiscalizadora, quiero visualizar las redes sociales de “Ojo Ciudadano” desde la plataforma, para estar al tanto de las actualizaciones y actividades relacionadas con las obras públicas y la transparencia en la ejecución de proyectos.  

 Scenario: ES50 - Acceder a las redes sociales desde el menú principal 
  TA01
  Given que un ciudadano peruano está en la plataforma "Ojo Ciudadano"
  When accede a la [sección de "Redes Sociales" desde el menú principal]
  Then la plataforma digital debe mostrar una [lista de enlaces a las redes sociales oficiales de "Ojo Ciudadano"]

 Examples :
    | Íconos y enlaces de redes sociales |
    | Facebook                           |
    | Twitter                            |
    | Instagram                          |

 Scenario: ES51 - Abrir un enlace a una red social 
  TA02
  Given que un ciudadano peruano está en la sección de "Redes Sociales"
  When selecciona un enlace a una red social específica (por ejemplo, Facebook, Twitter, Instagram)
  Then el navegador debe [abrir la página de la red social seleccionada en una nueva pestaña]

 Examples :
    | Íconos y enlaces de redes sociales | Nueva pestaña de la red social |
    | Facebook                           | Publicaciones                  |
    | Twitter                            | Comentarios                    |
    | Instagram                          | Actualizaciones                |

 Scenario: ES52 - Mensaje de error al no encontrar redes sociales 
  TA03
  Given que un ciudadano peruano accede a la sección de "Redes Sociales"
  When no hay información disponible sobre las redes sociales de "Ojo Ciudadano"
  Then la plataforma digital debe mostrar un [mensaje de error indicando que no se encontraron redes sociales disponibles] y sugerir que intente más tarde

 Examples :
    | Íconos y enlaces de redes sociales | Nueva pestaña de la red social | Mensaje de error                                                |
    | Facebook                           | Sin información                | No se encontraron redes sociales disponibles, intente más tarde | 
    | Twitter                            | Sin información                | No se encontraron redes sociales disponibles, intente más tarde | 
    | Instagram                          | Sin información                | No se encontraron redes sociales disponibles, intente más tarde | 

#US20
Feature: US20 - Como representante de una institución gubernamental o fiscalizadora, quiero enviar un formulario desde la sección de "Contáctanos" en la plataforma, para comunicarme de manera formal y recibir asistencia o información sobre temas relacionados con las obras públicas o el uso de la plataforma digital. 

 Scenario: ES52 - Completar y enviar el formulario
  TA01
  Given que un representante de una institución gubernamental o fiscalizadora está en la sección de "Contáctanos"
  When completa el formulario con los campos requeridos (nombre, email, mensaje) y hace clic en el botón de enviar
  Then la plataforma digital debe confirmar que el formulario ha sido enviado correctamente mostrando un mensaje de éxito ("Su mensaje ha sido enviado")

 Examples :
    | Formulario | Mensaje de éxito |
    | Nombre     | "Su formulario fue enviado correctamente" |
    | Email      | "Su formulario fue enviado correctamente" |
    | Mensaje    | "Su formulario fue enviado correctamente" |

 Scenario: ES53 - Validación de campos obligatorios
  TA02
  Given que un representante de una institución gubernamental o fiscalizadora está llenando el formulario
  When intenta enviarlo sin completar todos los campos obligatorios (por ejemplo, sin email o mensaje)
  Then la plataforma digital debe mostrar un mensaje de advertencia resaltando los campos faltantes y solicitando que se completen antes de poder enviar el formulario

 Examples :
    | Formulario | Mensaje de advertencia |
    | Nombre     | "No se puede enviar el nombre si no ingresa el Nombre"  |
    | Email      | "No se puede enviar el nombre si no ingresa el Email"   |
    | Mensaje    | "No se puede enviar el nombre si no ingresa el Mensaje" |

 Scenario: ES54 - Copia del formulario de "Contáctanos" por email
  TA03
  Given que un representante de una institución gubernamental o fiscalizadora ha enviado correctamente el formulario
  When la plataforma digital recibe la solicitud
  Then la plataforma digital debe enviar automáticamente un [correo electrónico de confirmación a la dirección proporcionada], indicando que el [mensaje ha sido recibido] y que la respuesta será enviada en un plazo determinado

 Examples :
    | Formulario enviado | Correo electrónico de confirmación |
    | Formulario1        | CorreoElectrónico1                 |

#US21
Feature: US21 - Como representante de una institución gubernamental o fiscalizadora, quiero poder visualizar noticias actualizadas sobre los avances de las obras públicas, para estar informado sobre el progreso y poder monitorear de manera efectiva el estado de los proyectos.  

 Scenario: ES55 - Acceder a la sección de noticias
  TA01
  Given que el representante de la institución gubernamental desea revisar las últimas noticias sobre obras públicas
  When  el representante de una institución gubernamental o fiscalizadora ingresa a la plataforma digital y accede a la [sección de noticias]
  Then la plataforma digital debe mostrar un [listado actualizado de noticias con avances detallados sobre las obras en curso], organizadas cronológicamente

 Examples :
    | Listado actualizado de noticias |
    | AvanceDetallado1                |
    | AvanceDetallado2                |
    | AvanceDetallado3                |

#US22
Feature: US22 - Como representante de una institución gubernamental o fiscalizadora, quiero poder visualizar la descripción, misión y visión de la startup "Ojo Ciudadano" desde la plataforma, para comprender mejor sus objetivos y valores antes de colaborar o interactuar con la misma. 

 Scenario: ES56 - Acceder a la sección de "Sobre Nosotros"
  TA01
  Given el representante de una institución gubernamental o fiscalizadora desea conocer más sobre la startup
  When el representante de una institución gubernamental o fiscalizadora selecciona la [sección "Sobre Nosotros"] en la plataforma
  Then la plataforma digital debe mostrar una página informativa que incluya la misión, visión, objetivos y una breve descripción de los proyectos principales de la plataforma

 Examples :
    | Sobre Nosotros |
    | Descripción    |
    | Misión         |
    | Visión         |

#US23
Feature: US23 - Como representante de una institución gubernamental o fiscalizadora, quiero acceder a la sección "¿Qué es Ojo Ciudadano?" en la plataforma digital, para comprender su misión, visión y objetivos, así como obtener información sobre estadísticas de uso y participar en la asistencia disponible para resolver mis dudas.

 Scenario: ES57 - Visualización exitosa de la sección "¿Qué es Ojo Ciudadano?"
  TA01
  Given que un representante de una institución gubernamental o fiscalizadora está en la página principal de la plataforma digital "Ojo Ciudadano"
  When el representante de una institución gubernamental o fiscalizadora selecciona la [opción "¿Qué es Ojo Ciudadano?"] desde el menú de navegación
  Then la plataforma digital debe mostrar una [página informativa] que incluya la misión, visión, objetivos y una breve descripción de los proyectos principales de la plataforma

 Examples :
    | ¿Qué es Ojo Ciudadano? |
    | Misión                 |
    | Visión                 |  
    | Objetivos              |
    | Descrípción            |

#US24
Feature: US24 - Como representante de una institución gubernamental o fiscalizadora, quiero una búsqueda rápida de proyectos en "Ojo Ciudadano", para encontrar de manera eficiente información sobre proyectos específicos, recibir sugerencias automáticas y filtrar por fechas, mejorando así mi experiencia en la plataforma. 

 Scenario: ES58 - Búsqueda rápida de proyectos por nombre
  TA01
  Given que un ciudadano peruano necesita acceder rápidamente a información sobre un proyecto específico
  When el representante de una institución gubernamental o fiscalizadora ingresa el [nombre del proyecto] en la barra de búsqueda rápida
  Then a plataforma digital debe mostrar una [lista de resultados relevantes], priorizando los proyectos que coincidan con el nombre exacto o palabras clave relacionadas, permitiendo al representante de una institución gubernamental o fiscalizadora acceder a la información del proyecto de forma directa y rápida

 Examples :
    | Nombre del proyecto en la búsqueda rápida |
    | Nombre exacto                             |
    | Palabras clave                            |

Scenario: ES59 - Sugerencias automáticas en la búsqueda rápida
  TA02
  Given que un representante de una institución gubernamental o fiscalizadora peruano está utilizando la búsqueda rápida pero no recuerda el nombre completo del proyecto
  When el representante de una institución gubernamental o fiscalizadora comienza a escribir en la barra de búsqueda rápida
  Then la plataforma digital debe mostrar [sugerencias automáticas basadas en los términos ingresados], como nombres de proyectos, gobiernos regionales o palabras clave relacionadas, para facilitar la selección del proyecto deseado sin necesidad de escribir el nombre completo
 Examples :
    | Sugerencia automáticas en la búsqueda rápida |
    | Nombres de proyectos                         |
    | Nombres de gobiernos regionales              |
    | Palabras clave relacionadas                  |

#US25
Feature: US25 - Como representante de una institución gubernamental o fiscalizadora, quiero descargar la aplicación "Ojo Ciudadano" desde la plataforma, para acceder a sus servicios, así como saber los requisitos de la plataforma digital, recibir instrucciones claras de instalación y obtener una confirmación de la descarga con una guía rápida para usar la app. 

 Scenario: ES60 - Descarga de la app desde Play Store
  TA01
  Given que un representante de una institución gubernamental o fiscalizadora se encuentra en la pantalla principal
  When se dirija al pie de página
  And haga clic en el botón [“Descargar desde la Play Store”]
  Then el representante de una institución gubernamental o fiscalizadora es redireccionado a la Play Store
  And le aparecerá la [pantalla para que proceda la descarga]

 Examples :
    | Botón “Descargar desde la Play Store” | Pantalla de descarga de la app en Play Store |

 Scenario: ES61 - Descarga de la app desde Apple Store
  TA02
  Given que un representante de una institución gubernamental o fiscalizadora se encuentra en la pantalla principal
  When se dirija al pie de página
  And haga clic en el botón [“Descargar desde la Apple Store”]
  Then el representante de una institución gubernamental o fiscalizadora es redireccionado a la Apple Store
  And le aparecerá la [pantalla para que proceda la descarga]

 Examples :
    | Botón “Descargar desde la Apple Store” | Pantalla de descarga de la app en Apple Store |

#US26
Feature: US26 - Como representante de una institución gubernamental o fiscalizadora, quiero consultar los indicadores de impacto social y económico de las obras, para evaluar su efectividad.

 Scenario: ES62 - Visualización de indicadores de impacto
  TA01
  Given que el representante de una institución gubernamental o fiscalizadora necesita ver el impacto social
  When selecciona una [obra finalizada]
  Then la plataforma digital debe mostrar [indicadores de desarrollo social], como empleo, salud, entre otros

 Examples :
    | Indicadores de desarrollo social | 
    | Empleo                           |
    | Salud                            |
    | Otros                            |

 Scenario: ES63 - Comparar impacto planificado con el real
  TA02
  Given que el representante de una institución gubernamental o fiscalizadora desea realizar una comparación
  When accede a la obra
  Then a plataforma digital debe permitir comparar los [valores estimados del impacto social y económico con los valores reales]

 Examples :
    | Visualización de los indicadores            |
    | Comparación impacto planificado con el real |

#US27
Feature: US27 - Como representante de una institución gubernamental o fiscalizadora, quiero recibir informes automáticos sobre el cumplimiento de los objetivos sociales, para asegurar que las obras están generando el impacto esperado.   

 Scenario: ES64 - Generación automática de informes
  TA01
  Given que la obra está en ejecución
  When se alcanzan ciertos [hitos sociales]
  Then la plataforma digital debe generar un [informe automático que incluya indicadores clave del impacto social de la obra]

 Examples :
    | Informe automático            |
    | Indicadores de impacto social |

 Scenario: ES65 - Distribución de informes
  TA02
  Given que el [informe] ha sido generado
  When esté listo
  Then la plataforma digital debe [enviarlo automáticamente a los representantes de instituciones gubernamentales o fiscalizadoras interesados]

 Examples :
    | Informe automático                                                 |
    | Envío automático a representantes de instituciones gubernamentales |
    | Envío automático a representantes de fiscalizadoras interesados    |

#US28
Feature: US28 - Como representante de una institución gubernamental o fiscalizadora, quiero acceder a encuestas de satisfacción ciudadana sobre las obras, para medir la percepción del público en tiempo real.

 Scenario: ES66 - Acceso a encuestas
  TA01
  Given que la obra está en ejecución
  When el representante de una institución gubernamental o fiscalizadora [accede a la plataforma]
  Then debe poder consultar los [resultados de las encuestas de satisfacción ciudadana relacionadas con la obra]

 Examples :
    | Resultados de las encuestas |
    | Resultado1                  |
    | Resultado2                  |
    | Resultado3                  |

 Scenario: ES67 - Actualización periódica de encuestas
  TA02
  Given que se realizan nuevas encuestas de satisfacción ciudadana
  When se obtienen [nuevos resultados]
  Then la plataforma digital debe [actualizar los datos de las encuestas en tiempo real para reflejar la percepción pública actual]

 Examples :
    | Nuevos resultados de las encuestas |
    | ResultadoActualizado1              |
    | ResultadoActualizado2              |
    | ResultadoActualizado3              |

#US29
Feature: US29 - Como representante de una institución gubernamental o fiscalizadora, quiero comparar el impacto social estimado con el impacto real, para analizar si los objetivos iniciales se han cumplido.    

 Scenario: ES68 - Comparación de impacto
  TA01
  Given que la obra ha sido completada
  When el representante de una institución gubernamental o fiscalizadora [accede al análisis de impacto]
  Then la plataforma digital debe mostrar una [comparación entre el impacto social estimado y el impacto real alcanzado]

 Examples :
    | Comparación de impacto                                              |
    | Comparación visual del impacto social estimado vs.el real alcanzado |

 Scenario: ES69 - Generación de informe de comparación
  TA02
  Given que el representante de una institución gubernamental o fiscalizadora ha [solicitado un informe]
  When se genera el informe
  Then la plataforma digital debe permitir descargar un [informe que detalle la comparación de impacto social estimado y real]

 Examples :
    | Informe de comparación                                                |
    | Comparación detallada del impacto social estimado y el real alcanzado |

#US30
Feature: US30 - Como representante de una institución gubernamental o fiscalizadora, quiero generar informes detallados que muestren el impacto de las obras en la reducción de brechas de infraestructura y servicios básicos, para evaluar su contribución al desarrollo

 Scenario: ES70 - Selección de obras para análisis
  TA01
  Given que el representante de una institución gubernamental o fiscalizadora está generando un reporte
  When [selecciona las obras a analizar]
  Then el sistema debe mostrar los [indicadores de reducción de brechas de infraestructura y servicios básicos]

 Examples :
    | Obras a analizar                                                                               |
    | Visualización de indicadores sobre reducción de brechas de infraestructura y servicios básicos |
   
 Scenario: ES71 - Generación de informe completo
  TA02
  Given que el representante de una institución gubernamental o fiscalizadora ha [generado el informe]
  When la plataforma digital finaliza el proceso
  Then debe permitir descargar un [informe completo que muestre el impacto en la reducción de brechas de infraestructura y servicios básicos]

Examples :
    | Informe descargable                                                                                 |
    | Datos detallados sobre el impacto en la reducción de brechas de infraestructura y servicios básicos |