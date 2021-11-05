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
    $(document).ready(function () {
        // Fetch projects on the projects tab on page load
        getProject();

        // Fetch projects on tasks tab on page load
        getProject(true);

        // Fetch tasks on page load
        getTask();
    });

    $("#select-proj-option2").on("change", function (e) {
        const element = e.target;

        getTask(element.value);
    });

    // Submit project form
    $("#project-form").on('submit', createProject);

    // Submit task form
    $("#task-form").on('submit', createTask);

    // Submit task update form
    $("#task-edit-form").on('submit', updateTask);

    // Submit task delete form
    $("#task-delete-form").on('submit', deleteTask);

    // Create new project
    function createProject() {
        event.preventDefault();

        // Ajax post request
        $.post('', $("#project-form").serialize(), function (data, status) {
            console.log(data);

            // Update projects view
            getProject();
        });
    }

    // Fetch project
    function getProject(selectOption = false, taskStat = "add-task") {
        if (selectOption) {
            $.get('', function (data, status) {
                let htmlList = `<option value="">All projects</option>`;
                html = ""

                for (const key in data) {
                    html += `<option value="${data[key]["id"]}">${data[key]["title"]}</option>`;
                    htmlList += `<option value="${data[key]["id"]}">${data[key]["title"]}</option>`;
                }

                $("#select-proj-option").html(html);
                $("#select-proj-option2").html(htmlList);
            });
        } else {
            $.get('', function (data, status) {
                let html = "";

                if (data.length > 0) {
                    for (const key in data) {
                        html += `<li class="list-group-item">${data[key]["title"]}</li>`;
                    }
                } else {
                    html =
                        `<span class="font-weight-bold m-3 text-center">There are no available projects.</span>`;
                }

                $("#project-list").html(html);
            });
        }
    }


    // Create new task
    function createTask() {
        event.preventDefault();

        // Ajax post request
        $.post('', $("#task-form").serialize(), function (data, status) {
            console.log(data);

            // Update projects view
            getTask();
        });
    }

    // Fetch tasks
    function getTask(selectOption = false) {
        if (selectOption == false || selectOption == "") {
            $.get('', function (data, status) {
                let html = "";

                if (data.length > 0) {
                    for (const key in data) {
                        html += `<li class="list-group-item">
                    <span>
                        <label class="font-weight-bold">Task:</label>${data[key]["name"]}
                    <br>
                    <label class="font-weight-bold">Priority:</label>${data[key]["priority"]}
                    </span>
                    <span class="float-right">
                        <a href="javascript:void(0)" onclick="deleteModal(event, '${data[key]["name"]}', '${data[key]["id"]}')">Delete</a>|<a href="javascript:void(0)" onclick="editModal(event, '${data[key]["name"]}', '${data[key]["priority"]}', '${data[key]["id"]}')">Edit</a>
                    </span>
                </li>`;
                    }
                } else {
                    html =
                        `<span class="font-weight-bold m-3 text-center">There are no available tasks.</span>`;
                }

                $("#tasks-list").html(html);
            });
        } else {
            $.get('', {
                project: selectOption
            }, function (data, status) {
                let html = "";

                if (data.length > 0) {
                    for (const key in data) {
                        html += `<li class="list-group-item">
                    <span>
                        <label class="font-weight-bold">Task:</label>${data[key]["name"]}
                    <br>
                    <label class="font-weight-bold">Priority:</label>${data[key]["priority"]}
                    </span>
                    <span class="float-right">
                        <a href="javascript:void(0)" onclick="deleteModal(event, '${data[key]["name"]}', '${data[key]["id"]}')">Delete</a>|<a href="javascript:void(0)" onclick="editModal(event, '${data[key]["name"]}', '${data[key]["priority"]}', '${data[key]["id"]}')">Edit</a>
                    </span>
                </li>`;
                    }
                } else {
                    html =
                        `<span class="font-weight-bold m-3 text-center">There are no available tasks.</span>`;
                }

                $("#tasks-list").html(html);
            });
        }
    }

    // Open task update modal
    function editModal(e, name, priority, id) {
        $("#task-id").val(id);
        $("#task-priority").val(priority);
        $("#task-name").val(name);

        $("#task-edit-modal").modal("toggle");
    }

    // Update task
    function updateTask() {
        event.preventDefault();

        // Ajax post request
        $.post('', $("#task-edit-form").serialize(), function (data, status) {
            console.log(data);

            // Hide the edit modal on update
            $("#task-edit-modal").modal("toggle");

            // Update projects view
            getTask();
        });
    }


    // Open task delete modal
    function deleteModal(e, name, id) {
        $("#task-delete-id").val(id);
        $("#task-delete-name").html(name);

        $("#task-delete-modal").modal("toggle");
    }

    // Update task
    function deleteTask() {
        event.preventDefault();

        // Ajax post request
        $.post('', $("#task-delete-form").serialize(), function (data, status) {
            console.log(data);

            // Hide the edit modal on update
            $("#task-delete-modal").modal("toggle");

            // Update projects view
            getTask();
        });
    }

</script>
@endpush
