@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <span class="font-weight-bold">
                        {{ __('Sum Total Results (By local government)') }}
                    </span>
                    <span class="float-right">
                        <select name="" id="lga-select" class="form-control">
                            <option value="*" @if($lga=='*' ) selected @endif>All Local Governments</option>
                            @foreach($localGovernments as $localgovt)
                            <option value="{{$localgovt->id}}" @if($lga==$localgovt->id) selected
                                @endif>{{$localgovt->lga_name}}</option>
                            @endforeach
                        </select>
                    </span>
                </div>
                <div class="card-body">
                    <div class="overflow-auto inner-card">
                        @if(count($results) == 0)
                        <h4 class="text-center mt-5"> There are no results for this LGA.</h4>
                        @else
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Polling Unit</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($results as $key=> $result)
                                <tr>
                                    <th scope="row">{{($key+1)}}</th>
                                    <td>{{$result->polling_unit_name}}</td>
                                    <td>
                                        @php
                                        $total = 0;
                                        foreach($result->announcedpuresult as $pu){
                                        $total+=$pu->party_score;
                                        }
                                        @endphp

                                        {{$total}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @endif
                    </div>
                </div>
                <div class="card-footer">
                    <div class="text-center">
                        {{ $results->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    // Listen to change event for LGA filter
    $("#lga-select").on("change", function (e) {
        const element = e.target;

        // Check value for redirect
        if (element.value == "*") {
            // Redirect to page with all results
            window.location.replace("{{route('total-result')}}");
        } else {
            // Redirect to page with all results
            window.location.replace("{{route('total-result')}}" + "/" + element.value);
        }

    });

</script>
@endpush
