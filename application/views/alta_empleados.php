<div class="starter-template">
	<form class="frm_empleado form-inline" id="frm_empleado" action="" method="post" onsubmit="return false;">

		<div class="row">
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Nº Legajo <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" type="number" pattern="\d+" class="form-control" name="IdLegajo" id="IdLegajo" value="" placeholder="Ingrese un número" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Apellido <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="Apellido" id="Apellido" value="" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Nombre <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="Nombre" id="Nombre" value="" required>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Dirección <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="Direccion" id="Direccion" value="" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
			<div class="form-group">
				<label style="margin-top: 7px;">Localidad <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="Localidad" id="Localidad" value="" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Tipo Doc.<strong style="color: #dd4b39">*</strong>: </label>

					<select class="form-control select2 select2-hidden-accesible habilitar requerido" name="ID_TIPO_DOCUMENTO" id="marca_id_edit" required>
						<option value="" disabled selected>-Seleccione Tipo Documento-</option>
						<?php
							foreach ($tipo_doc as $tipo) {
								echo '<option  value="'.$tipo['id_tipo_documento'].'">'.$tipo['tipo_documento'].'</option>';
							}
						?>
					</select>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Nº Documento <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="NroDocumento" id="NroDocumento" type="number" pattern="\d+" placeholder="Ingrese un número" value="" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
					<label style="margin-top: 7px;">Cod. Postal <strong style="color: #dd4b39">*</strong>: </label>
					<input type="text" class="form-control" name="CodigoPostal" id="CodigoPostal" type="number" pattern="\d+" placeholder="Ingrese un número" value="" required>
				</div>
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="form-group">
						<label style="margin-top: 7px;">Provincia<strong style="color: #dd4b39">*</strong>: </label>

						<select class="form-control select2 select2-hidden-accesible" name="ID_PROVINCIA" id="ID_PROVINCIA" required>
							<option value="" disabled selected>-Seleccione Provincia-</option>
							<?php
								foreach ($provincia as $prov) {
									echo '<option  value="'.$prov['id_provincia'].'">'.$prov['provincia'].'</option>';
								}
							?>
						</select>
					</div>
			</div>
		</div>

		<br>	<br>

	</form>
	<div class="row">

		<div class="col-md-3 col-md-offset-9">
			<button type="button" class="btn btn-primary" id="guardar" onclick="guardar()">Guardar</button>
		</div>
	</div>


</div> <!-- /.starter-template -->

<script>

  function guardar(){

			var campFrm = $('#frm_empleado')[0];

			if(campFrm.checkValidity()){

					$("#guardar").attr("disabled", "disabled");

					var form = $('#frm_empleado')[0];
					var data = new FormData(form);
					var data = formToObject(data);

					$.ajax({
							type: 'POST',
							data:{ data },
							url: 'index.php/Empleado/guardar',
							success: function(result) {
								alert('Empleado Nuevo se guardado con Exito...');
								$("#frm_empleado")[0].reset();
								$("#guardar").removeAttr("disabled");
							},
							error: function(result){
								alert('ERROR en guardado de Empleado Nuevo...');
								$("#guardar").removeAttr("disabled");
							}
					});
      }else{
				alert('Por favor rellene los con tipos de datos válidos');
			}
	}



</script>
