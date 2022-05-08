@extends('company.layout.companysite.index')

@section('content')
    <div class="page-wrapper">
        <section class="ls-section">

            <div class="auto-container">
                <div class="row">
                    <div class="content-column col-md-12 col-sm-12">
                        <div style="display: flex;justify-content:right;margin-right:35px;margin-bottom:10px;">
                            <a href="{{ url('/company/employee/add') }}" class="btn btn-primary">Add
                                Employee</a>
                        </div>

                        <div class="ls-outer">
                            <!-- Candidate block three -->
                            @foreach ($employees as $employee)
                                <div class="candidate-block-three">

                                    <div class="inner-box">

                                        <input type="hidden" class="form-control" name="company_id"
                                            value="{{ Auth::user()->id }}">

                                        <div class="content">
                                            <figure class="image"><img src="images/candidate.png" alt="">
                                            </figure>
                                            <h4 class="name"><a href="#">{{ $employee->name }}</a></h4>
                                            <ul class="candidate-info">
                                                <li>UI Designer</li>
                                                <li><span class="icon flaticon-map-locator"></span>{{ $employee->email }}
                                                </li>
                                                <li><span class="icon flaticon-money"></span>{{ $employee->gender }}</li>
                                            </ul>

                                            <ul class="candidate-info">
                                                <li>Contact Number :- {{ $employee->phone }} </li>
                                            </ul>


                                            <div class="">
                                                <a href="{{url('company/employee/edit/'.$employee->id)}}" class="btn btn-primary">Edit</a>
                                                    <a href="{{url('/company/employee/delete',$employee->id)}}"  class="btn btn-danger" >Delete</a>
                                            </div>

                                        </div>
                                        </form>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--End Listing Page Section -->

    </div>
@endsection
