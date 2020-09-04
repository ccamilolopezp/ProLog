%Dato, se entiende en el sentido de noci�n estad�stica
es_dato(media).
es_dato(moda).
es_dato(desviaci�nEst�ndar).
es_dato(varianza).
es_dato(muestra).
es_dato(hip�tesis).
es_dato(variable).
es_dato(error).
es_dato(inferencia).
es_dato(aceptaci�n).
es_dato(rechazar).
es_dato(prueba).
es_dato(normal).
es_dato(par�metro).
es_dato(significancia).
es_dato(nivel).

%Informaci�n: tiene un contexto, una sintaxis, una sem�ntica.
% Para este ejemplo, se contemplan dos grupos, "skills", habilidades
% matem�ticas, y definiciones.

%Habilidades
es_habilidad(reconocerYDefinirVariables).
es_habilidad(formularHip�tesis).
es_habilidad(establecerUnEstad�sticoDePrueba).
es_habilidad(seleccionarNivelesDeSignificancia).
es_habilidad(determinarZonaDeRechazo).
es_habilidad(establecerReglasDeDecisi�n).
es_habilidad(calcularElValorObservadoDeEstadisticoDePrueba).
es_habilidad(obtenerConclusi�nes).

% Definiciones: para este ejemplo se caracterizan solo dos, b�sicas y
% especificas del �rea de estad�stica.

%Definiciones B�sicas:
es_definici�n_b�sica(definici�nDeVariable).
es_definici�n_b�sica(definici�nDePar�metro).

%Definiciones Espec�ficas:
es_definici�n_espec�fica(definici�nDeEstimadorDeunPar�metro).
es_definici�n_espec�fica(definici�nDeEstad�sticoDePrueba).
es_definici�n_espec�fica(definici�nDeDistribuci�nProbabilidad).
es_definici�n_espec�fica(definici�nDeHip�tesisEstad�stica).
es_definici�n_espec�fica(definici�nDeHip�tesisNula).
es_definici�n_espec�fica(definici�nDeHip�tesisAlternativa).
es_definici�n_espec�fica(definici�nDeErrorTipo1).
es_definici�n_espec�fica(definici�nDeErrorTipo2).
es_definici�n_espec�fica(definici�nDeDecisi�nCorrecta1).
es_definici�n_espec�fica(definici�nDeDecisi�nCorrecta2).
es_definici�n_espec�fica(definici�nDeEstad�sticoDePrueba).
es_definici�n_espec�fica(definici�nDeNivelDeSignificancia).

es_definici�n(Concepto) :- es_definici�n_b�sica(Concepto) ;
                           es_definici�n_espec�fica(Concepto).

es_informaci�n(Concepto) :- es_definici�n(Concepto);
                            es_habilidad(Concepto).

% Conocimiento: Es el resultado de tomar la informaci�n y utilizar
% m�todo deductivo.

es_algoritmo(1,reconocerYDefinirLaOLasVariables).
es_algoritmo(2,formularLasHip�tesisNulaYAlternativa).
es_algoritmo(3,establecerUnEstad�sticoDePruebaAdecuado).
es_algoritmo(4,seleccionarUnNivelDeSignificaci�n).
es_algoritmo(5,determinarLaZonaDeRechazoYEstablecerLaReglaDeDecisi�n).
es_algoritmo(6,calcularElValorObservadoDelEstad�sticoDePrueba).
es_algoritmo(7,obtenerLaConclusi�n).

es_conocimiento(Concepto) :- es_algoritmo(_, Concepto).

