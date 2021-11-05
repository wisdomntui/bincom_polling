<!-- Modal -->
<div class="modal fade" id="task-edit-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <form id="task-edit-form" class="form">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Edit Task</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="col-md-12 mt-4">
                                        @csrf
                                        <input type="hidden" id="task-id" name="task_id">
                                        <div class="form-group">
                                            <label for="title" class="font-weight-bold">Task name</label>
                                            <input class="form-control" id="task-name" name="name" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label for="title" class="font-weight-bold">Task priority</label>
                                            <input type="number" class="form-control" id="task-priority" name="priority"
                                                type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
