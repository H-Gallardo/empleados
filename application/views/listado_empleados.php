<div class="starter-template">

<?php
  if($empleados)
  { ?>
      <table id="tabla_herramientas" class="table table-bordered table-striped">
          <thead class="thead-dark" bgcolor="#eeeeee">
            <th>Id Legajo</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Direccion</th>
            <th>Localidad</th>
            <th>Id Tipo Docum</th>
            <th>Tipo Docum</th>
            <th>Nº Docum</th>
            <th>C.P.</th>
            <th>Provincia</th>

          </thead>
          <tbody >
            <?php
              if($empleados)
              {
                foreach($empleados as $emp)
                {
                  echo "<tr>";
                    echo '<td>'.$emp["IdLegajo"].'</td>';
                    echo '<td>'.$emp["Nombre"].'</td>';
                    echo '<td>'.$emp["Apellido"].'</td>';
                    echo '<td>'.$emp["Direccion"].'</td>';
                    echo '<td>'.$emp["Localidad"].'</td>';
                    echo '<td>'.$emp["ID_TIPO_DOCUMENTO"].'</td>';
                    echo '<td>'.$emp["tipo_documento"].'</td>';
                    echo '<td>'.$emp["NroDocumento"].'</td>';
                    echo '<td>'.$emp["CodigoPostal"].'</td>';
                    echo '<td>'.$emp["provincia"].'</td>';
                  echo '</tr>';
                }
              }
            ?>
          </tbody>
      </table>

      <?php   }else{
                echo '<h3>No hay datos para mostrar</h3>';
              }
       ?>

</div>