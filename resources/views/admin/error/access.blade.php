@extends('layouts.admin')
@section('content')

<div class="row home_page_row">
<div class="col-md-12">
<div class="card">
<div class="card-header bg-danger">
<div class="row">
<div class="col-md-8 card_header_title">
<h4><i class="fa fa-gg-circle" ></i> Access </h4>
</div>
<div class="clr"></div>
</div>
</div>
  <div class="card-body">

<p><strong>Access Denied!</strong>you have no permission enter this page.</p>
   
  </div>
  <div class="card-footer text-center">
      <a  href="{{url('admin')}}" class="btn btn-sm btn-dark">Dashboard</a>
  </div>
</div>
</div>
</div>



@endsection