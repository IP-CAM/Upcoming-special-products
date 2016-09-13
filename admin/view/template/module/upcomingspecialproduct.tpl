<?php
/*
 * @support
 * http://www.opensourcetechnologies.com/contactus.html
 * sales@opensourcetechnologies.com
* */
echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-upcomingspecialproduct" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-upcomingsepcial" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="upcomingspecialproduct_limit" value="<?php echo $upcomingspecialproduct_limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="upcomingspecialproduct_width" value="<?php echo $upcomingspecialproduct_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="upcomingspecialproduct_height" value="<?php echo $upcomingspecialproduct_height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-days"><?php echo $entry_days; ?></label>
            <div class="col-sm-10">
				<select name="upcomingspecialproduct_show_days" id="input-days" class="form-control">
				  <?php if ($upcomingspecialproduct_show_days) { ?>
				  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
				  <option value="0"><?php echo $text_no; ?></option>
				  <?php } else { ?>
				  <option value="1"><?php echo $text_yes; ?></option>
				  <option value="0" selected="selected"><?php echo $text_no; ?></option>
				  <?php } ?>
				</select>
            </div>
          </div>                    
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-prices"><?php echo $entry_prices; ?></label>
            <div class="col-sm-10">
				<select name="upcomingspecialproduct_show_prices" id="input-prices" class="form-control">
				  <?php if ($upcomingspecialproduct_show_prices) { ?>
				  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
				  <option value="0"><?php echo $text_no; ?></option>
				  <?php } else { ?>
				  <option value="1"><?php echo $text_yes; ?></option>
				  <option value="0" selected="selected"><?php echo $text_no; ?></option>
				  <?php } ?>
				</select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-percentage"><?php echo $entry_percentage; ?></label>
            <div class="col-sm-10">
				<select name="upcomingspecialproduct_show_percentage" id="input-percentage" class="form-control">
				  <?php if ($upcomingspecialproduct_show_percentage) { ?>
				  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
				  <option value="0"><?php echo $text_no; ?></option>
				  <?php } else { ?>
				  <option value="1"><?php echo $text_yes; ?></option>
				  <option value="0" selected="selected"><?php echo $text_no; ?></option>
				  <?php } ?>
				</select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-show-date"><?php echo $entry_date; ?></label>
            <div class="col-sm-10">
				<select name="upcomingspecialproduct_show_date" id="input-show-date" class="form-control">
				  <?php if ($upcomingspecialproduct_show_date) { ?>
				  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
				  <option value="0"><?php echo $text_no; ?></option>
				  <?php } else { ?>
				  <option value="1"><?php echo $text_yes; ?></option>
				  <option value="0" selected="selected"><?php echo $text_no; ?></option>
				  <?php } ?>
				</select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-category-specific"><?php echo $entry_category_specific; ?></label>
            <div class="col-sm-10">
				<select name="upcomingspecialproduct_category_specific" id="input-category-specific" class="form-control">
				  <?php if ($upcomingspecialproduct_category_specific) { ?>
				  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
				  <option value="0"><?php echo $text_no; ?></option>
				  <?php } else { ?>
				  <option value="1"><?php echo $text_yes; ?></option>
				  <option value="0" selected="selected"><?php echo $text_no; ?></option>
				  <?php } ?>
				</select>
            </div>
          </div>
          <div class="form-group required">
			<label class="col-sm-2 control-label" for="input-module-publish"><?php echo $entry_module_publish; ?></label>
			<div class="col-sm-10">
			  <div class="input-group date">
				<input type="text" name="upcomingspecialproduct_module_publish" value="<?php if(!$upcomingspecialproduct_module_publish) $upcomingspecialproduct_module_publish=date('Y-m-d'); echo $upcomingspecialproduct_module_publish;  ?>" placeholder="<?php echo $entry_module_publish; ?>" data-date-format="YYYY-MM-DD" id="input-module-publish" class="form-control" />
				<span class="input-group-btn">
				<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
				</span></div>
			</div>
		  </div>
          <div class="form-group">
			<label class="col-sm-2 control-label" for="input-module-end"><?php echo $entry_module_end; ?></label>
			<div class="col-sm-10">
			  <div class="input-group date">
				<input type="text" name="upcomingspecialproduct_module_end" value="<?php echo $upcomingspecialproduct_module_end; ?>" placeholder="<?php echo $entry_module_end; ?>" data-date-format="YYYY-MM-DD" id="input-module-end" class="form-control" />
				<span class="input-group-btn">
				<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
				</span></div>
			</div>
		  </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-special-text"><?php echo $entry_text; ?></label>
            <div class="col-sm-10">
              <input type="text" name="upcomingspecialproduct_special_text" value="<?php echo $upcomingspecialproduct_special_text; ?>" placeholder="<?php echo $entry_text; ?>" id="input-special-text" class="form-control" />
            </div>
          </div>
          <div class="form-group">
          <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
          <div class="col-sm-10">
            <select name="upcomingspecialproduct_status" id="input-status" class="form-control">
              <?php if ($upcomingspecialproduct_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
 <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});
-->
</script>
