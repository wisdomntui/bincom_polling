 <!-- Modal -->
 <div class="modal fade" id="task-delete-modal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <form id="task-delete-form" class="form">
                                <div class="modal-body">
                                    Do you want to delete <span class="font-weight-bold" id="task-delete-name"></span>?
                                    <div class="col-md-12 mt-4">
                                        @csrf
                                        <input type="hidden" id="task-delete-id" name="task_id">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                                    <button type="submit" class="btn btn-primary">Yes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
