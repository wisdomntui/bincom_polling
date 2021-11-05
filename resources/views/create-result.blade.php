@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Create new polling unit (with results)') }}</div>

                <div class="card-body">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" href="#nav-home" role="tab"
                                aria-controls="nav-home" aria-selected="true">Create a new polling unit</a>
                            <a class="nav-item nav-link" id="nav-profile-tab" href="#nav-profile" role="tab"
                                aria-controls="nav-profile" aria-selected="false">Add results(per party)</a>
                        </div>
                    </nav>
                    <form id="create-form" class="form">
                        @csrf
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                aria-labelledby="nav-home-tab">
                                <div class="col-md-12 mt-4">
                                    <div class="row mb-3">
                                        <div class="col">
                                            <label for="lga">LGA</label>
                                            <select name="lga" id="lga" class="form-control">
                                                <option value="">Select LGA</option>
                                                @foreach($lgas as $lga)
                                                <option value="{{$lga->id}}">{{$lga->lga_name}}</option>
                                                @endforeach
                                            </select>
                                            <span id="lga-err"></span>
                                        </div>
                                        <div class="col">
                                            <label for="ward">Ward</label>
                                            <select name="ward" id="ward" class="form-control">
                                                <option value="">Select Ward</option>
                                            </select>
                                            <span id="ward-err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="Unit number"
                                                aria-label="Unit number" name="polling_unit_number"
                                                id="polling_unit_number">
                                            <span id="polling_unit_number-err"></span>
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="Unit name"
                                                aria-label="Unit name" name="polling_unit_name" id="polling_unit_name">
                                            <span id="polling_unit_name-err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <input type="number" step="0.01" class="form-control" placeholder="Latitude"
                                                aria-label="Latitude" name="lat" id="lat">
                                            <span id="lat-err"></span>
                                        </div>
                                        <div class="col">
                                            <input type="number" step="0.01" class="form-control"
                                                placeholder="Longitude" aria-label="Longitude" name="long" id="long">
                                            <span id="long-err"></span>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <textarea name="description" id="description" cols="30" rows="5"
                                                class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col" id="description-err">

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <button type="button" class="btn btn-sm btn-outline-primary"
                                                id="next">Next</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel"
                                aria-labelledby="nav-profile-tab">
                                <div class="col-md-12 mt-4">
                                    <div class="pb-3" style="height: 400px;overflow-y: scroll;">
                                        @if(count($parties) == 0)
                                        <h4>There are no parties, please create parties.</h4>
                                        @else
                                        @foreach($parties as $party)
                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="">
                                                    {{$party->party_name}}
                                                </label>
                                            </div>
                                            <div class="col">
                                                <input type="hidden" name="party_id[]" value="{{$party->id}}">
                                                <input type="hidden" name="party_abb[]" value="{{$party->party_id}}">
                                                <input type="number" class="form-control" placeholder="Party Score"
                                                    aria-label="Party Score" name="party_score[]" id="party_score">
                                            </div>
                                        </div>
                                        @endforeach
                                        <span id="score-error" class="mb-2 text-danger"></span>
                                        <div class="row">
                                            <div class="col">
                                                <button type="button" class="btn btn-sm btn-outline-primary"
                                                    id="prev">Prev</button>
                                            </div>
                                            <div class="col">
                                                <button type="submit" class="btn btn-sm btn-outline-primary"
                                                    id="next">Submit</button>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                </form>
                <div class="card-footer">
                    <div id="success-message" class="text-success">

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    // Handle click of next button
    $("#next").on("click", function (e) {
        const element = e.target;
        tab = "nav-profile";
        input = {
            "polling_unit_number": $("#polling_unit_number").val(),
            "polling_unit_name": $("#polling_unit_name").val(),
            "lat": $("#lat").val(),
            "long": $("#long").val(),
            "lga": $("#lga").val(),
            "ward": $("#ward").val(),
            "description": $("#description").val().trim(),
            "_token": "{{ csrf_token() }}"
        }

        // Validate first form tab
        validatePolInput(input);
    });

    // Validate polling unit input
    function validatePolInput(input) {
        // Ajax post request
        $.post("{{route('validate-unit')}}", input, function (data, status) {
            $('.nav-tabs a[href="#' + tab + '"]').tab('show');
        }).catch(function (data) {
            let errors = data.responseJSON.errors;
            for (const prop in errors) {
                html = "";
                for (const index in errors[prop]) {
                    html += `<p class="text-danger">${errors[prop][index]}</p>`
                }
                $(`#${prop}-err`).html(html);
            }
        });
    }

    $("#prev").on("click", function (e) {
        const element = e.target;
        tab = "nav-home";
        $('.nav-tabs a[href="#' + tab + '"]').tab('show');
    });

    $("#create-form").on("submit", function (e) {
        e.preventDefault();

        const element = e.target;
        create();
    });

    // Insert data
    function create() {
        // Ajax post request
        $.post("{{route('save-result')}}", $("#create-form").serialize(), function (data, status) {
            $("#success-message").html("Results entered successfully.");

            // Redirect to main page
            setTimeout(() => {
                window.location.replace("{{route('create-result')}}");
            }, 4000);

        }).catch(function (data) {
            $("#score-error").html("Scores are required and must be numeric.");
        });
    }

    // Fetch ward on selecting lga
    $("#lga").on("change", function (e) {
        const element = e.target;
        if (element.value == "") {
            $("#ward").html(`<option value="">Select Ward</option>`);
            return;
        }

        // Ajax post request
        $.get("{{route('get-wards')}}", {
            "lga_id": element.value
        }, function (data, status) {
            html = "";
            if (data.length > 0) {
                for (const index in data) {
                    html += `<option value="${data[index]['id']}">${data[index]['ward_name']}</option>`
                }
            }
            $("#ward").html(html);
        });
    });

</script>
@endpush
