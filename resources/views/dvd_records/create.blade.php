
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                @if(session('success'))
    <div class='alert alert-success text-center'>
        {{session('success')}}
    </div>
@endif
                <div class="mx-5">
                    <form method="POST" action="{{route('dvd_records.store')}}">
                        @csrf
                        <div class="form-group" >
                          <label for="exampleInputEmail1">CD No</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cd_no" readonly value="{{$cd_no}}">
                          {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Map No</label>
                          <input type="text" class="form-control" id="exampleInputPassword1" name="map_no" placeholder="Map No">
                        </div>
                        <div class="form-group">

                          <input type="text" class="form-control" readonly id="exampleInputPassword1" name="user_id" hidden value="{{Auth::user()->id}}">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                      </form>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
