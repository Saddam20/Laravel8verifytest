@extends('layouts.admin')
@section('content')

<div class="row">
<div class="col-md-12">
<div class="card">
  <form action="{{url('admin/user/submit')}}" method="post" enctype="multipart/form-data">
    @csrf
    @method('POST')
<div class="card-header">
<div class="row">
<div class="col-md-8 card_header_title">

<h4><i class="fa fa-gg-circle" ></i> User Registration </h4>

</div>
<div class="col-md-4 card_header_btn text-right">
<a  href="{{url('admin/user')}}" class="btn btn-sm btn-dark card_btn "><i class="fa fa-th" ></i>All user </a>
</div>
<div class="clr"></div>
</div>
</div>
  <div class="card-body">
  
   @if(Session::has('error'))
  <scrip>
   swal({title: "Opps!",text: "Failed to create user registration!",icon: "error", timer:5000});
 </script>
    @endif
  <div class="form-group row custom_form_group {{$errors->has('name')?'has-error':''}}">
    <label class="col-sm-3 col-form-label col_form_label">Name:</label>
    <div class="col-sm-7">
      <input type="text" class="form-control form_control" name="name" value="{{old('name')}}">
      @if($errors->has('name'))
      <span class="invalid-feedback" role="alert">
            <strong>{{$errors->first('name')}}</strong>
      </span>
      @endif
    </div>
  </div>
   <div class="form-group row custom_form_group {{$errors->has('phone')?'has-error':''}}">
    <label class="col-sm-3 col-form-label col_form_label">Phone:</label>
    <div class="col-sm-7">
      <input type="text" class="form-control form_control" name="phone" value="{{old('phone')}}">
    </div>
  </div>
  <div class="form-group row custom_form_group {{$errors->has('email')?'has-error':''}}">
    <label class="col-sm-3 col-form-label col_form_label">Email:</label>
  
    <div class="col-sm-7">
      <input type="email" class="form-control form_control" name="email" value="{{old('email')}}">
       @if($errors->has('email'))
      <span class="invalid-feedback" role="alert">
            <strong>{{$errors->first('email')}}</strong>
      </span>
      @endif
    </div>
  </div>
  <div class="form-group row custom_form_group {{$errors->has('password')?'has-error':''}} ">
    <label class="col-sm-3 col-form-label col_form_label">Password:</label>
    <div class="col-sm-7">
      <input type="password" class="form-control form_control" name="password" >
       @if($errors->has('password'))
      <span class="invalid-feedback" role="alert">
            <strong>{{$errors->first('password')}}</strong>
      </span>
      @endif
    </div>
  </div>
  <div class="form-group row custom_form_group">
    <label class="col-sm-3 col-form-label col_form_label">Confirm-password:</label>
    <div class="col-sm-7">
      <input type="password" class="form-control form_control" name="password_confirmation">
    </div>
  </div>

  <div class="form-group row custom_form_group {{$errors->has('role')?'has-error':''}} ">
    <label class="col-sm-3 col-form-label col_form_label">Role:</label>
    <div class="col-sm-6">
      <select class="form-control form_control" name="role">

        <option value="">Select user role</option>
        @php
        $allRole=App\Models\Role::where('role_status',1)->orderBy('role_id','ASC')->get();
        @endphp
        @foreach($allRole as $urole)
        <option value="{{$urole->role_id}}">{{$urole->role_name}}</option>
        @endforeach

      </select> 
       @if($errors->has('role'))
      <span class="invalid-feedback" role="alert">
            <strong>{{$errors->first('role')}}</strong>
      </span>
      @endif
    </div>
  </div>
  <div class="form-group row custom_form_group {{$errors->has('phone')?'has-error':''}}">
    <label class="col-sm-3 col-form-label col_form_label">Photo:</label>
    <div class="col-sm-4">
      <input type="file"  name="pic" onchange="previewFile()">
      <img src="{{asset('contents/admin')}}/images/avatar.png"  class="img-thumbnail img-fluid upload_image" alt="image preview">
    </div>
  </div>
  </div>
  <div class="card-footer text-center card_footer_btn">
      <button  type="submit" class="btn">Registration</button>
  </div>
</div>
</form>
</div>
</div>
@endsection