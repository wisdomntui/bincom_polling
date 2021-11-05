@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Poll results (per polling unit)') }}</div>

                <div class="card-body">
                    <div class="accordion" id="accordionExample">
                        @foreach($pollingUnitResults as $key => $result)
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#collapse{{$key}}" @if($key==0) aria-expanded="true" @else
                                        aria-expanded="false" @endif aria-controls="collapse{{$key}}">
                                        <span class="font-weight-bold">
                                            {{ ucfirst($result->polling_unit_name) }}
                                        </span>
                                    </button>
                                </h5>
                            </div>

                            <div id="collapse{{$key}}" @if($key==0) class="collapse show" @else class="collapse" @endif
                                aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="overflow-auto inner-card">
                                        <table class="table">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Party</th>
                                                    <th scope="col">Party Score</th>
                                                    <th scope="col">HandleEntered By</th>
                                                    <th scope="col">Date Entered</th>
                                                    <th scope="col">User IP</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($result->announcedpuresult as $key=> $pu)
                                                <tr>
                                                    <th scope="row">{{($key+1)}}</th>
                                                    <td>{{$pu->party_abbreviation}}</td>
                                                    <td>{{$pu->party_score}}</td>
                                                    <td>{{$pu->entered_by_user}}</td>
                                                    <td>{{ date('M d, Y', strtotime($pu->date_entered)) }}</td>
                                                    <td>{{$pu->user_ip_address}}</td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach

                        {{-- <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                        data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Collapsible Group Item #2
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                data-parent="#accordionExample">
                                <div class="card-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                    accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                        data-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        Collapsible Group Item #3
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                data-parent="#accordionExample">
                                <div class="card-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                    accusamus labore sustainable VHS.
                                </div>
                            </div>
                        </div> --}}
                    </div>
                </div>
                <div class="card-footer">
                    <div class="text-center">
                        {{ $pollingUnitResults->links() }}
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>

</script>
@endpush
