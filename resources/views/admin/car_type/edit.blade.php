@extends('admin.template')

@section('main')
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Truck types 
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ url(LOGIN_USER_TYPE.'/dashboard') }}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ url(LOGIN_USER_TYPE.'/car_type') }}">Truck types </a></li>
        <li class="active">Edit</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- right column -->
        <div class="col-md-8 col-sm-offset-2">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Truck types Form</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

           
              {!! Form::open(['url' => 'admin/edit_car_type/'.$result->id, 'class' => 'form-horizontal','files' => true]) !!}
              <div class="box-body">
              <span class="text-danger">(*)Fields are Mandatory</span>
                <div class="form-group">
                  <label for="input_name" class="col-sm-3 control-label">Name<em class="text-danger">*</em></label>

                  <div class="col-sm-6">
                    {!! Form::text('car_name',$result->car_name, ['class' => 'form-control', 'id' => 'input_name', 'placeholder' => 'Name']) !!}
                    <span class="text-danger">{{ $errors->first('car_name') }}</span>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input_description" class="col-sm-3 control-label">Description</label>

                  <div class="col-sm-6">
                    {!! Form::textarea('description',$result->description, ['class' => 'form-control', 'id' => 'input_description', 'placeholder' => 'Description', 'rows' => 3]) !!}
                    <span class="text-danger">{{ $errors->first('description') }}</span>

                  </div>

                </div>


                 <div class="form-group">
                <label for="input_license_back" class="col-sm-3 control-label">Truck image</label>
                <div class="col-sm-6">
                {!! Form::file('vehicle_image',  ['class' => 'form-control', 'id' => 'rc', 'accept' => 'image/*']) !!}
                 <span class="text-danger">{{ $errors->first('vehicle_image') }}</span>
              <img src="{{ $result->vehicle_image }}" width="200" height="100" >
                </div>

                </div>
                 <div class="form-group">
                <label for="input_license_back" class="col-sm-3 control-label">Truck Active image</label>
                <div class="col-sm-6">
                {!! Form::file('active_image',  ['class' => 'form-control', 'id' => 'rc', 'accept' => 'image/*']) !!}
                 <span class="text-danger">{{ $errors->first('active_image') }}</span>
              <img src="{{ $result->active_image }}" width="200" height="100" >
                </div>
                </div>



                
                <div class="form-group">
                  <label for="input_status" class="col-sm-3 control-label">Status<em class="text-danger">*</em></label>

                  <div class="col-sm-6">
                    {!! Form::select('status', array('Active' => 'Active', 'Inactive' => 'Inactive'),$result->status, ['class' => 'form-control', 'id' => 'input_status', 'placeholder' => 'Select']) !!}
                    <span class="text-danger">{{ $errors->first('status') }}</span>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-info pull-right" name="submit" value="submit">Submit</button>
                <button type="submit" class="btn btn-default pull-left" name="cancel" value="cancel">Cancel</button>
              </div>
              <!-- /.box-footer -->
            {!! Form::close() !!}
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@stop