@extends('layouts.admin')
@section('content')

<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-header">
<div class="row">
<div class="col-md-8 card_header_title">
<h4><i class="fa fa-gg-circle" ></i> All user information </h4>
</div>

<div class="col-md-4 card_header_btn text-right">
<a  href="{{url('admin/user/add')}}" class="btn btn-sm btn-dark card_btn "><i class="fa fa-plus-circle" ></i>Add user information</a>
</div>
<div class="clr"></div>
</div>
</div>
  <div class="card-body">
    @if(Session::has('success'))
  <scrip>
   swal({title: "Success!",text: "Successfully user create!",icon: "success", timer:5000});
 </script>
    @endif
  <table id="allTable"  class="table table-bordered table-hover table-striped custom_table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col">Photo</th>
      <th scope="col">User Role</th>
      <th scope="col">Manage</th>

    </tr>
  </thead>
  <tbody>
      @foreach($allUser as $data)
    <tr>
      <td>{{$data->name}}</td>
      <td>{{$data->phone}}</td>
      <td>{{$data->email}}</td>
      <td>@mdo</td>
      <td>{{$data->userRole->role_name}}</td>
      <td>
     <a href="#"><i class="fa fa-plus-square fa-lg"></i></a>
          <a href="#"><i class="fa fa-pencil-square fa-lg"></i></a>
          <a href="#"><i class="fa fa-trash fa-lg"></i></a>
      </td>
    </tr>
    @endforeach
  </tbody>
</table>


  </div>
  <div class="card-footer">
      <a  href="#" class="btn btn-sm btn-dark">print</a>
      <a  href="#" class="btn btn-sm btn-info">csv</a>
      <a  href="#" class="btn btn-sm btn-secondary">excel</a>

      
  </div>
</div>
</div>
</div>



@endsection