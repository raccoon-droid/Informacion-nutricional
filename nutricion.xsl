<?xml version= "1.0" encoding="UTF-8"?>
<!-- Transformación de la información del xml en HTML5-->
<xsl:stylesheet version = "1.0"
    xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">

    <!--Escribe la declaración XML-->
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

        <!-- Coincidencia con la raíz del documento-->
        <xsl:template match="/producto">
            <html lang="es">

                <head>
                    <meta charset="UTF-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                    <title>Información nutricional</title>
                    <!--Hoja de estilos interna-->
                    <style>

                        body{
                            display: grid;
                            place-items: center;
                            margin: 0;
                            padding: 0;
                            font-family: Verdana, Geneva, Tahoma, sans-serif;
                            background-color: #a2e2ee;
                            color: #0c2a3d;
                        }

                        table{
                            border-width: 5px;
                            border-style: double;
                            border-collapse: collapse;
                            width: auto;
                        }
                        
                        thead{
                            text-align: center;
                        }
                        
                        tr{
                            background-color: #f6f3fe;
                        }
                        
                        td{
                            padding: 5px 1rem;
                            border-bottom: 1px solid #0c2a3d; 
                        }
                        <!--Estilo para resaltar titulo y subtitulo de la tabla-->
                        .oscuro{
                            background-color: #0c2a3d;
                            color: white;
                            text-align: center;
                        }
                        <!--Estilo para separar secciones de la tabla-->
                        .seccion{
                            text-align: left;
                            border-bottom: 1px solid #0c2a3d; 
                        }
                        <!--Estilo para resaltar las filas que empiezan una sección-->
                        .resaltado{
                            background-color: #e0d8f8;
                            text-align: left;
                            border-top: 4px solid #0c2a3d;
                            border-bottom: 1px solid #0c2a3d; 
                        }
                        <!--Estilo para las filas que terminan una sección-->
                        .sub{
                            border-bottom: 4px solid #0c2a3d;
                        }

                    </style>
                </head>

                <body>
                    <!--Titulo y subtitulo de la página-->
                    <h1>Actividad 4.3 Hoja de estilo de información nutricional</h1>
                    <h2> <xsl:value-of select="nombre"/> </h2>

                    <table>
                        
                        <thead>
                            <!--Titulo del encabezado-->
                            <tr class="oscuro">
                                <th colspan="2">Información Nutricional</th>
                            </tr>
                            <tr>
                                <td colspan="2"><strong>Porción:</strong> <xsl:value-of select="cantidad/porcion"/> </td>
                            </tr>
                            <!--Sub titulo del encabezado-->
                            <tr class="oscuro">
                                <th colspan="2">Contenido por porción</th>
                            </tr>

                            <tbody>

                                <tr>
                                    <th class="seccion">Calorías</th>
                                    <td><xsl:value-of select="cantidad/calorias"/></td>
                                </tr>
                                
                                <tr>
                                    <th class="seccion">Proteínas</th>
                                    <td><xsl:value-of select="cantidad/proteinas"/></td>
                                </tr>
                                
                                <!--Sección de las grasas-->
                                <tr>
                                    <th colspan="2" class="resaltado">Grasas</th>
                                </tr>
                                
                                <tr>
                                    <td>Grasa (en calorias)</td>
                                    <td><xsl:value-of select="cantidad/grasas/grasaCalorias"/></td>
                                </tr>
                                
                                <tr>
                                    <td>Grasa (en gramos)</td>
                                    <td><xsl:value-of select="cantidad/grasas/grasaGramos"/></td>
                                </tr>
                                
                                <tr>
                                    <td>Grasa Saturada</td>
                                    <td><xsl:value-of select="cantidad/grasas/grasaSaturadas"/></td>
                                </tr>
                                
                                <tr>
                                    <td class="sub">Colesterol</td>
                                    <td class="sub"><xsl:value-of select="cantidad/grasas/colesterol"/></td>
                                </tr>
                                <!--Fin de la sección de las grasas-->
                                <!--Sección de los carbohidratos-->
                                <tr>
                                    <th colspan="2" class="resaltado">Carbohidratos</th>
                                </tr>
                                
                                <tr>
                                    <td>Totales</td>
                                    <td><xsl:value-of select="cantidad/carbohidratos/totales"/></td>
                                </tr>
                                
                                <tr>
                                    <td class="sub">Azucares</td>
                                    <td class="sub"><xsl:value-of select="cantidad/carbohidratos/azucares"/></td>
                                </tr>
                                <!--Fin de la sección de los carbohidratos-->
                                <tr>
                                    <th class="seccion">Fibra</th>
                                    <td><xsl:value-of select="cantidad/fibra"/></td>
                                </tr>
                                
                                <tr>
                                    <th class="seccion">Sodio</th>
                                    <td><xsl:value-of select="cantidad/sodio"/></td>
                                </tr>

                            </tbody>
                        </thead>
                    </table>

                </body>

            </html>
        </xsl:template>

</xsl:stylesheet>
