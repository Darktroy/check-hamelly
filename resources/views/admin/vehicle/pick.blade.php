@extends('admin.template')

@section('main')
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" ng-controller="vehicle_management">
    <!-- Content Header (Page header) -->
    <section class="content-header" ng-init='vehicle_id=0'>
      <h1>
        Add Trucks
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ url(LOGIN_USER_TYPE.'/dashboard') }}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{ url(LOGIN_USER_TYPE.'/vehicle') }}">Pick Ride</a></li>
        <li class="active">Add</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- right column -->
        <div class="col-md-8 col-sm-offset-2 ne_ed">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Pick Request Form</h3>
              <br/>
              {{-- <pre> --}}
              {!! $scheduleRide !!}
              {{-- </pre> --}}
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            {!! Form::open(['url' => LOGIN_USER_TYPE.'/pick_ride_to_company', 
            'class' => 'form-horizontal',
            'files' => true,'id'=>'pick_ride_to_company_form']) !!}
            <input type="hidden" value="{!! $scheduleRideId !!}" name="scheduleRideId" id="scheduleRideId"/>
              <div class="box-body ed_bld">
              <span class="text-danger">(*)Fields are Mandatory</span>
                @if (LOGIN_USER_TYPE!='company')
                  <div class="form-group">
                    <label for="input_company" class="col-sm-3 control-label">Company Name<em class="text-danger">*</em></label>

                    <div class="col-sm-6">
                      {!! Form::select('company_name', $company, '',
                       ['class' => 'form-control', 'id' => 'input_company_name', 
                       'placeholder' => 'Select','ng-model' => 'company_name',
                       'ng-change' => 'get_driver()']) !!}
                      <span class="text-danger">{{ $errors->first('company_name') }}</span>
                    </div>
                  </div>
                @else
                  <span ng-init='company_name="{{Auth::guard("company")->user()->id}}";get_driver()'></span>
                @endif
                <div class="form-group">
                  <label for="input_company" class="col-sm-3 control-label">Driver Name<em class="text-danger">*</em></label>

                  <div class="col-sm-6">
                    <!-- {!! Form::select('driver_name', $drivers, '', ['class' => 'form-control', 
                      'id' => 'input_driver_name', 'placeholder' => 'Select']) 
                      !!} -->
                    <span class="loading" style="display: none;padding-left: 50%">
                      <img src="{{ url('images/loader.gif') }}" style="width: 25px;height: 25px; "><br></span>
                      <select class='form-control' required name="driver_id" id="input_driver_name">
                      <option value="">Select</option>
                     
                      @foreach ($drivers as $key=>$driver)
                      <option value={!! $driver['id']!!}>
                        {!! $driver['first_name'] .' '.$driver['last_name'] .' - '. 
                        $driver['mobile_number'].' - '.$driver['vehicle']['vehicle_type']!!}
                      @php
             
                      @endphp
                      {{-- <p>This is user {{ $driver->id }}</p> --}}
                      @endforeach
                    </select>
                    <span class="text-danger" id="driver-error">{{ $errors->first('driver_name') }}</span>
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                 <button type="submit" class="btn btn-info pull-right" name="submit" value="submit">Submit</button>
                 <a href="{{url(LOGIN_USER_TYPE.'/vehicle')}}"><span class="btn btn-default pull-left">Cancel</span></a>
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
  @endsection
@push('scripts')
<script>
  $('#input_dob').datepicker({ 'format': 'dd-mm-yyyy'});
</script>
@endpush
