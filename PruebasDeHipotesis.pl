%Dato, se entiende en el sentido de noción estadística
es_dato(media).
es_dato(moda).
es_dato(desviaciónEstándar).
es_dato(varianza).
es_dato(muestra).
es_dato(hipótesis).
es_dato(variable).
es_dato(error).
es_dato(inferencia).
es_dato(aceptación).
es_dato(rechazar).
es_dato(prueba).
es_dato(normal).
es_dato(parámetro).
es_dato(significancia).
es_dato(nivel).

%Información: tiene un contexto, una sintaxis, una semántica.
% Para este ejemplo, se contemplan dos grupos, "skills", habilidades
% matemáticas, y definiciones.

%Habilidades
es_habilidad(reconocerYDefinirVariables).
es_habilidad(formularHipótesis).
es_habilidad(establecerUnEstadísticoDePrueba).
es_habilidad(seleccionarNivelesDeSignificancia).
es_habilidad(determinarZonaDeRechazo).
es_habilidad(establecerReglasDeDecisión).
es_habilidad(calcularElValorObservadoDeEstadisticoDePrueba).
es_habilidad(obtenerConclusiónes).

% Definiciones: para este ejemplo se caracterizan solo dos, básicas y
% especificas del área de estadística.

%Definiciones Básicas:
es_definición_básica(definiciónDeVariable).
es_definición_básica(definiciónDeParámetro).

%Definiciones Específicas:
es_definición_específica(definiciónDeEstimadorDeunParámetro).
es_definición_específica(definiciónDeEstadísticoDePrueba).
es_definición_específica(definiciónDeDistribuciónProbabilidad).
es_definición_específica(definiciónDeHipótesisEstadística).
es_definición_específica(definiciónDeHipótesisNula).
es_definición_específica(definiciónDeHipótesisAlternativa).
es_definición_específica(definiciónDeErrorTipo1).
es_definición_específica(definiciónDeErrorTipo2).
es_definición_específica(definiciónDeDecisiónCorrecta1).
es_definición_específica(definiciónDeDecisiónCorrecta2).
es_definición_específica(definiciónDeEstadísticoDePrueba).
es_definición_específica(definiciónDeNivelDeSignificancia).

es_definición(Concepto) :- es_definición_básica(Concepto) ;
                           es_definición_específica(Concepto).

es_información(Concepto) :- es_definición(Concepto);
                            es_habilidad(Concepto).

% Conocimiento: Es el resultado de tomar la información y utilizar
% método deductivo.

es_algoritmo(1,reconocerYDefinirLaOLasVariables).
es_algoritmo(2,formularLasHipótesisNulaYAlternativa).
es_algoritmo(3,establecerUnEstadísticoDePruebaAdecuado).
es_algoritmo(4,seleccionarUnNivelDeSignificación).
es_algoritmo(5,determinarLaZonaDeRechazoYEstablecerLaReglaDeDecisión).
es_algoritmo(6,calcularElValorObservadoDelEstadísticoDePrueba).
es_algoritmo(7,obtenerLaConclusión).

es_conocimiento(Concepto) :- es_algoritmo(_, Concepto).

