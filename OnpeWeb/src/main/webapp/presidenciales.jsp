<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String id = (String) session.getAttribute("id");
    String[] dPresidencial = (String[]) session.getAttribute("dPresidencial");
    String[] aDPD = session.getAttribute("dpd").toString().split(",");%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
	<head>
        <title>ONPE - Oficina Nacional de Procesos Electorales</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen"/>		
    </head>
<body>
	<%@include file="WEB-INF/header.jsp" %>
    	<div class="container">
        	<img src="images/fnd-presidencial.jpg" width="1170" height="248" class="img-responsive mg30top">
            <section class="menu navbar-default menu05">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
				<a name="posicion"></a>
                <nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
                    <ul class="nav navbar-nav">
                        <li class="bt-azul act-azul">
                            <a href="#">PRESIDENCIAL</a>
                        </li>
                        <li class="bt-amarillo">
                            <a href="actas.jsp">ACTAS</a>
                        </li>
                        <li class="bt-rojo">
                            <a href="participacion.jsp">PARTICIPACIÓN CIUDADANA</a>
                        </li>
                    </ul>
                </nav>
            </section>
            <section class="contenedor">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-interna">
                            <ul>
                            	<%if (id == null) { %>
                                <li><a href="svlPresidenciales" class="act-izq">RESUMEN GENERAL</a></li>
                                <li><a href="svlPresidenciales?id=Presidenciales">RESULTADOS PRESIDENCIALES</a></li>
                                <li><a href="svlPresidenciales?id=Tipo">RESULTADOS POR TIPO DE VOTOS</a></li>
                                <% } %>
                                <%if (id == "Presidenciales") { %>
                                <li><a href="svlPresidenciales">RESUMEN GENERAL</a></li>
                                <li><a href="svlPresidenciales?id=Presidenciales" class="act-izq">RESULTADOS PRESIDENCIALES</a></li>
                                <li><a href="svlPresidenciales?id=Tipo">RESULTADOS POR TIPO DE VOTOS</a></li>
                                <% } %>
                                <%if (id == "Tipo") { %>
                                <li><a href="svlPresidenciales">RESUMEN GENERAL</a></li>
                                <li><a href="svlPresidenciales?id=Presidenciales">RESULTADOS PRESIDENCIALES</a></li>
                                <li><a href="svlPresidenciales?id=Tipo" class="act-izq">RESULTADOS POR TIPO DE VOTOS</a></li>
                                <% } %>
                            </ul>
                        </div>
                    </div>
                    <%if (id == null) {%>
                    <div class="col-xs-12 col-md-9" id="impreso">
                        <div class="contenido-interna">
                            <div class="titulos col-xs-12">
                                <div class="col-xs-11">
                                    <h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
                                </div>

                                <div class="col-xs-1 oculto-boton-print">
                                    <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                                </div>
                            </div>

							
							<div class="col-lg-7 centered">
								<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
									<div class="col-xs-3 col-md-1">
										<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
									</div>

									<div class="col-xs-9 col-md-11">
										<ul>
											<li>ACTAS PROCESADAS: 100.000%</li>
											<li>ACTAS CONTABILIZADAS: 100.000%</li>
											<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
										</ul>
									</div>
								</div>
							</div>
                            <div class="col-xs-12 pbot30">
							    <p class="subtitle">RESUMEN GENERAL DE ELECCIONES PRESIDENCIALES</p>
								<br>
                                <div id="page-wrap">
								    <table class="table01">
                                        <tbody>
                                            <tr class="titulo_tabla">
                                                <td>ORGANIZACIÓN POLÍTICA</td>
                                                <td>TOTAL</td>
                                                <td>% VOTOS VÁLIDOS</td>
                                            </tr>
																																				<tr>
														<td><img width="40px" height="40px" src="images/simbolo_pkk.jpg" class="spaceimg"><img width="40px" height="40px" src="images/pkk.jpg" class="spaceimg">PERUANOS POR EL KAMBIO </td>
																													<td><%=dPresidencial[5] %></td>
																														<td><%=dPresidencial[6] %></td> 
																												
													</tr>
																																																<tr>
														<td><img width="40px" height="40px" src="images/simbolo_keyko.jpg" class="spaceimg"><img width="40px" height="40px" src="images/keyko.jpg" class="spaceimg">FUERZA POPULAR </td>
																													<td><%=dPresidencial[7] %></td>
																														<td><%=dPresidencial[8] %></td> 
																												
													</tr>
																							                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="subtitle">AVANCE DE ESCRUTINIO</p>
                                <div id="page-wrap">
                                    <table class="table02">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>TOTAL</th>
                                                <th>PORCENTAJE</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="sangria0">TOTAL DE ACTAS</span></td>
                                                <td><%=dPresidencial[9] %></td>
                                                <td><%=dPresidencial[10] %></td>
                                            </tr>
                                            <tr>
                                                <td><span class="sangria1">PROCESADAS</span></td>
                                                <td><%=dPresidencial[9] %></td>
                                                <td><%=dPresidencial[10] %></td>
                                            </tr>
                                            <tr>
                                                <td><span class="sangria2">CONTABILIZADAS</span></td>
                                                <td><%=dPresidencial[9] %></td>
                                                <td><%=dPresidencial[10] %></td>
                                            </tr>
                                            <tr>
                                                <td><span class="sangria2">PARA ENVÍO AL JEE</span></td>
                                                <td>0</td>
                                                <td>0.000%</td>
                                            </tr>
                                            <tr>
                                                <td><span class="sangria1">POR PROCESAR</span></td>
                                                <td>0</td>
                                                <td>0.000%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-xs-12 pbot30">
                                <p class="subtitle">PARTICIPACIÓN CIUDADANA *</p>
                                <div id="page-wrap">
                                    <table class="table18">
                                        <thead>
                                            <tr>
                                                <th>ELECTORES HÁBILES</th>
                                                <th>CIUDADANOS QUE VOTARON</th>
												<th>% DE PARTICIPACIÓN</th>
                                                <th>% DE AUSENTISMO</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><%=dPresidencial[4] %></td>
                                                <td><%=dPresidencial[0] %></td>
												<td><%=dPresidencial[1] %></td>
                                                <td><%=dPresidencial[3] %></td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
							<div class="row">
								<div class="col-xs-12 legend ">
									<span>* La participación ciudadana se basa en actas contabilizadas.
									</span>
								</div>
							</div>

                        </div>
                    </div>
                    <% } %>
                    <% if (id == "Presidencial") {%>
                    <div class="col-xs-12 col-md-9" id="impreso">
						<div class="contenido-interna">
							<div class="titulos col-xs-12">
								<div class="col-xs-11">
									<h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
								</div>
					
								<div class="col-xs-1 oculto-boton-print">
									<button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
								</div>
							</div>
					
							<div class="col-xs-12">
								<p class="subtitle">RESULTADOS DE ELECCIONES PRESIDENCIALES</p>
									<form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form">
										<div id="divUbicombo" class="row">
											<div class="col-md-3" style="display:block">
												<label class="control-label">Ámbito:</label>
												<div id="ambito" class="form-group">
													<select name="cdgoAmbito" id="cdgoAmbito" class="form-control" onchange="buscarAmbito('10', '', 'PR', this.value, '');
													$('#aComentarioProvincia').html('');
													">
													  <option value="">TODOS</option>
													  <option value="P">PERÚ</option>
													  <option value="E">EXTRANJERO</option>
													</select>
												</div>
											</div>
											<div id="dvNombreDepartamento" class="col-md-3" style="">
												<div class="form-group">
													<label id="lblDepartamento" class="control-label">Departamento:</label>
													<div id="departamentos"><select name="cdgoDep" id="cdgoDep" class="form-control" onchange="getProvinciasDepa($('#cdgoAmbito').val(),'10', '', this.value, '');">
					    <option selected="selected" value="">TODOS</option>
					            <%  if ( session.getAttribute("departamentos") != null ) {
	    														String[][] mDepartamentos = (String[][]) session.getAttribute("departamentos"); 
	    														for( String[] aDepartamento : mDepartamentos ) { %>
											            			<option <%= ( aDPD[0].equals( aDepartamento[0] ) ? "selected" : "" ) %>  value="<%= aDepartamento[0] %>"><%= aDepartamento[1] %></option>
											            <% } } %>
					    </select></div>
														</div>
													</div>
													<div id="dvNombreProvincia" class="col-md-3" style="">
														<div class="form-group">
															<label id="lblProvincia" class="control-label">Provincia:</label>
															<div id="provincias">
																<select id="cdgoProv" name="cdgoProv" class="form-control" onchange="getResultadosDistMuni('140100', '10', 'EM', this.value, '');" disabled="disabled">
																  <option selected="selected" value="">TODOS</option>
																</select>
															</div>
														</div>
													</div>
													<div id="dvNombreDistrito" class="col-md-3" style="">
														<div class="form-group">
															<label id="lblDistrito" class="control-label">Distrito:</label>
															<div id="distritos">
																<select id="cdgoDist" name="cdgoDist" class="form-control" onchange="getResultadosDist('140100', '10', 'EM', this.value, '');" disabled="disabled">
																  <option selected="selected" value="">TODOS</option>
																</select>
															</div>
														</div>
													</div>
												</div>
					
												<div id="divDetalle"><br>
					<div style="clear:both"></div>
					
					
						  		<div class="row">
								<div class="col-lg-7 centered">
									<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
										<div class="col-xs-3 col-md-1">
											<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
										</div>
					
										<div class="col-xs-9 col-md-11">
											<ul>
												<li>ACTAS PROCESADAS: 100.000%</li>
												<li>ACTAS CONTABILIZADAS: 100.000%</li>
												<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
										<button class="btn btn-primary pull-right" type="button" onclick="VerGraficoBarras()">
								Ver gráfico barras
								</button>
									<br>
							<div class="col-xs-12">
								<div id="page-wrap">
									<table class="table03">
									<tbody>
										<tr class="titulo_tabla">
											<td>ORGANIZACIÓN POLÍTICA</td>
											<td style="width: 15%">TOTAL</td>
											<td style="width: 15%">% VOTOS VÁLIDOS</td>
											<td style="width: 15%">% VOTOS EMITIDOS</td>
										</tr>
										
																												<tr>
													<td><img width="40px" height="40px" src="images/simbolos/00000114.jpg" class="spaceimg">PERUANOS POR EL KAMBIO </td>
																						<td>8,418,681</td>
																																<td>50.103</td>
														<td>46.892</td>
																				</tr>
																													<tr>
													<td><img width="40px" height="40px" src="images/simbolos/00000106.jpg" class="spaceimg">FUERZA POPULAR </td>
																						<td>8,384,197</td>
																																<td>49.897</td>
														<td>46.700</td>
																				</tr>
																				</tbody>
									</table>
								</div>
							</div>
							<div class="col-xs-12 pbot30">
								<div id="page-wrap">
									<table class="table23">
										<tbody>
											<tr>
												<td>TOTAL DE VOTOS VÁLIDOS</td>
												<td style="width: 15%">16,802,878</td>
																				<td style="width: 15%">100.000</td>
																											<td style="width: 15%">93.592</td>
													
											</tr> 
											<tr>
												<td>VOTOS EN BLANCO</td>
												<td> 147,185</td>
												<td> &nbsp;</td>
																				<td>0.820</td>
																		</tr>
											<tr>
												<td>VOTOS NULOS</td>
												<td> 1,003,304</td>
												<td> &nbsp; </td>
																				<td>5.588</td>
																		</tr>
											<tr>
												<td> TOTAL DE VOTOS EMITIDOS</td>
												<td>							17,953,367
												</td>
												<td> &nbsp;</td>	
												<td> 
																						100.000
																				</td>	
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6 centered">
									<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
										<div class="col-xs-3 col-md-1">
											<span class="glyphicon glyphicon-info-sign ico-info" aria-hidden="true"></span>
										</div>
					
										<div class="col-xs-9 col-md-11">
											<ul>
												<li>Ciudadanos que votaron (CV): 17,953,367</li>
												<li>Electores hábiles (EH): 22,017,030</li>
												<li>Estos datos corresponden a las actas contabilizadas</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12">
									<div class="col-xs-12 col-md-6">
										<div class="cuadro01">
											<table class="table04">
												<tbody>
													<tr>
														<td class="titulo_tabla_mostaza" colspan="2" style="padding:0px;font-weight: bold;">ACTAS</td>
													</tr>
													<tr>
														<td class="bold">ACTAS PROCESADAS * 100.000%</td>
														<td>74,224</td>
													</tr>
													<tr>
														<td>- Contabilizadas Normales (A)</td>
														<td>74,013</td>
													</tr>
													<tr>
														<td class="bold">ACTAS ENVIADAS AL JEE</td>
														<td></td>
													</tr>
													<tr>
														<td>- Con Votos Impugnados</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Con Error Material</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Con Ilegibilidad</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Incompleta</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Con Solicitud de Nulidad</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Acta sin datos</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Acta Extraviada</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Acta Siniestrada</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Acta sin firmas</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Con más de un tipo de Observación</td>
														<td>0</td>
													</tr>
													<tr>
														<td class="bold">ANULADAS POR RESOLUCIÓN</td>
														<td></td>
													</tr>
													<tr>
														<td>- Contabilizadas anuladas (L)</td>
														<td>211</td>
													</tr>
													<tr>
														<td>- Actas de mesas no instaladas (M)</td>
														<td>0</td>
													</tr>
													<tr>
														<td>- Actas por procesar (0.000%)</td>
														<td>0</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-xs-12 col-md-6">
										<div class="cuadro01">
											<table class="table05">
												<thead>
													<tr>
														<th>MESAS A INSTALAR</th>
														<th style="text-align:center">74,224</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>MESAS INSTALADAS (N)</td>
														<td>74,224</td>
													</tr>
													<tr>
														<td>MESAS NO INSTALADAS (O)</td>
														<td>0</td>
													</tr>
													<tr>
														<td>MESAS POR INFORMAR (P)</td>
														<td>0</td>
													</tr>
												</tbody>
											</table>
										</div>
					
										<div class="cuadro01">
											<table class="table05">
												<thead>
													<tr>
														<th colspan="2">INFORMACIÓN REFERENCIAL</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>MESAS AGRUPADAS</td>
														<td>0</td>
													</tr>
													<tr>
														<td>GRUPOS DE VOTACIÓN</td>
														<td>74,224</td>
													</tr>
												</tbody>
											</table>
										</div>
					
										<div class="col-xs-12 col-md-12 col-lg-12 cont-curv1">
											<div class="col-xs-5 col-md-8">
												% Actas Contabilizadas * *
											</div>
					
											<div class="col-xs-7 col-md-4">
												<img src="images/formula01.jpg" class="img-responsive">
											</div>
										</div>
					
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 legend">
									<span>* Actas Procesadas: Todas aquellas actas que ingresaron al C.C. y pasaron por la digitación y verificación.</span>
									<br>
									<span>** Actas Contabilizadas: Todas aquellas actas cuyos votos han sido contabilizados.</span>
								</div>
							</div>
												
							<div id="dvResConAcordion" class="col-xs-12">
						<div class="panel-group ptop20" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span> GLOSARIO
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										<ul class="lista01">
											<li><b>ACTA CON VOTOS IMPUGNADOS:</b> Acta con votos impugnados.</li>
											<li><b>ACTA CON ERROR MATERIAL:</b> Con inconsistencias en los datos numéricos consignados.</li>
											<li><b>ACTA CON ILEGIBILIDAD:</b> Es aquella que contiene datos ilegibles.</li>
											<li><b>ACTA INCOMPLETA:</b> No consigna el total de ciudadanos que votaron.</li>
											<li><b>ACTA CON SOLICITUD DE NULIDAD:</b> Acta con solicitud de nulidad de la mesa, realizada de manera expresa en el espacio de observadores.</li>
											<li><b>ACTA SIN DATOS:</b> No se registran votos.</li>
											<li><b>ACTA EXTRAVIADA:</b> La que no llega a la ODPE y es declarada como tal por el Jefe de la ODPE.</li>
											<li><b>ACTA SINIESTRADA:</b> Acta que corresponde a una mesa de sufragio y que debido a hecho de violencia y/o atentado contra el Derecho al Sufragio que haya afectado el material electoral, no han podido ser entregadas a la ODPE o ingresadas al sistema de cómputo electoral para su procesamiento.</li>
											<li><b>ACTA SIN FIRMAS:</b> No se considera como acta observada cuando el acta de instalación, sufragio o escrutinio cuentan con por lo menos las firmas, el nombre y número de DNI de los tres miembros de mesa, en cualesquiera de estas, y en las otras dos restantes, los datos y las firmas de por lo menos dos miembros de la mesa.</li>
											<li><b>CON MÁS DE UNA OBSERVACIÓN:</b> Aquella acta que presenta alguna combinación de las observaciones anteriormente mencionadas.</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
					</form>
					</div>
					</div>
					</div>
                    <% } %>
                    <%if (id == "Tipo") {%>
                    <div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
							</div>

							<div class="col-xs-1 oculto-boton-print">
								<button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle">
																GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS
															</p>
							<form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form">
							<div id="divUbicombo" class="row">
								<div class="col-md-3" style="display:block">
									<label class="control-label">Ámbito:</label>
									<div id="ambito" class="form-group">
										<select name="cdgoAmbito" id="cdgoAmbito" class="form-control" onchange="buscarAmbito('10', '', 'PR', this.value, 'Barras');
										$('#aComentarioProvincia').html('');
										">
										  <option value="">TODOS</option>
										  <option value="P">PERÚ</option>
										  <option value="E">EXTRANJERO</option>
										</select>
									</div>
								</div>
								<div id="dvNombreDepartamento" class="col-md-3" style="display:none">
									<div class="form-group">
										<label id="lblDepartamento" class="control-label">Departamento:</label>
										<div id="departamentos">
											<select name="cdgoDep" id="cdgoDep" class="form-control" onchange="getProvinciasDepa('10', 'CPR', this.value);">
												  <option selected="selected" value="">TODOS</option>
												  											</select>
										</div>
									</div>
								</div>
								<div id="dvNombreProvincia" class="col-md-3" style="display:none">
									<div class="form-group">
										<label id="lblProvincia" class="control-label">Provincia:</label>
										<div id="provincias">
											<select id="cdgoProv" name="cdgoProv" class="form-control" onchange="getResultadosDistMuni('140100', '10', 'EM', this.value, '');">
											  <option selected="selected" value="">TODOS</option>
											</select>
										</div>
									</div>
								</div>
								<div id="dvNombreDistrito" class="col-md-3" style="display:none">
									<div class="form-group">
										<label id="lblDistrito" class="control-label">DISTRITO:</label>
										<div id="distritos">
											<select id="cdgoDist" name="cdgoDist" class="form-control" onchange="getResultadosDist('140100', '10', 'EM', this.value, '');">
											  <option selected="selected" value="">TODOS</option>
											</select>
										</div>
									</div>
								</div>
							</div>

							<div id="divDetalle"><br>

	<div class="row">
		<div class="col-lg-7 centered">
			<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
				<div class="col-xs-3 col-md-1">
					<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
				</div>

				<div class="col-xs-9 col-md-11">
					<ul>
						<li>ACTAS PROCESADAS: 100.000%</li>
						<li>ACTAS CONTABILIZADAS: 100.000%</li>
						<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 pbot30">
		
		<div class="row cont-recto">
			<div class="col-lg-8 centered">
																																																<p><b>GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS</b></p>
			<img class="img-responsive" src="imagen-votacion-graficoUbiPres.jpg?_tot_votos_validos=93.512&amp;_votos_blancos=0.815&amp;_votos_nulos=5.673&amp;_votos_impugnados=0.000">
			</div>
		</div>
		
		<div id="page-wrap">
			<table class="table03_2">
				<thead>
					<tr>
						<th>VOTOS VÁLIDOS</th>
						<th>VOTOS BLANCOS</th>
						<th>VOTOS NULOS</th>
						<th>TOTAL</th>
					</tr>
				</thead>
				<tbody>
					<tr>
												<td style="text-align:center">17,152,817</td>
						<td>149,577</td>
						<td>1,040,502</td>
						<td>18,342,896</td>
					</tr>
					<tr>
													<td style="text-align:center">93.512%</td>
																			<td>0.815%</td>
																			<td>5.673%</td>
												<td>100.000%</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
		

</div>

							</form>
						</div>
						
					</div>

			  </div>
                    <% } %>
                </div>
            </section>
</div>
<%@include file="WEB-INF/footer.jsp" %>   
</body></html>