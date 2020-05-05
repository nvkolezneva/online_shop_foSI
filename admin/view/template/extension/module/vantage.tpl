<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">

	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-vantage" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
			</div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>

	<div class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-cogs"></i> <?php echo $heading_title; ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-vantage" class="form-horizontal">
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
						<div class="col-sm-10">
							<input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
							<?php if ($error_name) { ?>
							<div class="text-danger"><?php echo $error_name; ?></div>
							<?php } ?>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
						<div class="col-sm-10">
							<select name="status" id="input-status" class="form-control">
								<?php if ($status) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						
						<div class="col-sm-10 col-sm-offset-2">
							<ul class="nav nav-tabs">
								<li class="active"><a aria-expanded="true" href="#tab-vantage-1" data-toggle="tab"><?php echo $custom_warranty; ?></a></li>
								<li><a aria-expanded="false" href="#tab-vantage-2" data-toggle="tab"><?php echo $custom_service; ?></a></li>
								<li><a aria-expanded="false" href="#tab-vantage-3" data-toggle="tab"><?php echo $custom_prices; ?></a></li>
								<li><a aria-expanded="false" href="#tab-vantage-4" data-toggle="tab"><?php echo $custom_delivery; ?></a></li>
							</ul>
							
							<div class="tab-content">

								<div class="tab-pane active" id="tab-vantage-1">

									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-text_warranty"><?php echo $custom_text; ?></label>
										<div class="col-sm-10">
											<input type="text" name="text_warranty" value="<?php echo $text_warranty; ?>" placeholder="<?php echo $custom_text; ?>" id="input-text_warranty" class="form-control" />
											<?php if ($error_text_warranty) { ?>
											<div class="text-danger"><?php echo $error_text_warranty; ?></div>
											<?php } ?>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-icon_warranty"><?php echo $custom_icon; ?></label>
										<div class="col-sm-10">
											<input type="text" name="icon_warranty" value="<?php echo $icon_warranty; ?>" placeholder="<?php echo $custom_icon; ?>" id="input-icon_warranty" class="form-control" />
											<?php if ($error_icon_warranty) { ?>
											<div class="text-danger"><?php echo $error_icon_warranty; ?></div>
											<?php } ?>
										</div>
									</div>

								</div>

								<div class="tab-pane" id="tab-vantage-2">
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-text_service"><?php echo $custom_text; ?></label>
										<div class="col-sm-10">
											<input type="text" name="text_service" value="<?php echo $text_service; ?>" placeholder="<?php echo $custom_text; ?>" id="input-text_service" class="form-control" />
											<?php if ($error_text_service) { ?>
											<div class="text-danger"><?php echo $error_text_service; ?></div>
											<?php } ?>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-icon_service"><?php echo $custom_icon; ?></label>
										<div class="col-sm-10">
											<input type="text" name="icon_service" value="<?php echo $icon_service; ?>" placeholder="<?php echo $custom_icon; ?>" id="input-icon_service" class="form-control" />
											<?php if ($error_icon_service) { ?>
											<div class="text-danger"><?php echo $error_icon_service; ?></div>
											<?php } ?>
										</div>
									</div>

								</div>
								<div class="tab-pane" id="tab-vantage-3">
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-text_price"><?php echo $custom_text; ?></label>
										<div class="col-sm-10">
											<input type="text" name="text_price" value="<?php echo $text_price; ?>" placeholder="<?php echo $custom_text; ?>" id="input-text_price" class="form-control" />
											<?php if ($error_text_price) { ?>
											<div class="text-danger"><?php echo $error_text_price; ?></div>
											<?php } ?>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-icon_price"><?php echo $custom_icon; ?></label>
										<div class="col-sm-10">
											<input type="text" name="icon_price" value="<?php echo $icon_price; ?>" placeholder="<?php echo $custom_icon; ?>" id="input-icon_price" class="form-control" />
											<?php if ($error_icon_price) { ?>
											<div class="text-danger"><?php echo $error_icon_price; ?></div>
											<?php } ?>
										</div>
									</div>

								</div>
								<div class="tab-pane" id="tab-vantage-4">
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-text_delivery"><?php echo $custom_text; ?></label>
										<div class="col-sm-10">
											<input type="text" name="text_delivery" value="<?php echo $text_delivery; ?>" placeholder="<?php echo $custom_text; ?>" id="input-text_delivery" class="form-control" />
											<?php if ($error_text_delivery) { ?>
											<div class="text-danger"><?php echo $error_text_delivery; ?></div>
											<?php } ?>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-icon_delivery"><?php echo $custom_icon; ?></label>
										<div class="col-sm-10">
											<input type="text" name="icon_delivery" value="<?php echo $icon_delivery; ?>" placeholder="<?php echo $custom_icon; ?>" id="input-icon_delivery" class="form-control" />
											<?php if ($error_icon_delivery) { ?>
											<div class="text-danger"><?php echo $error_icon_delivery; ?></div>
											<?php } ?>
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
</div>
<?php echo $footer; ?>
