<div class="modal fade" id="modalDelete" data-backdrop ="static" data-keyboard="false" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <form class="modal-content" method="post" action="#">
          @method('DELETE')
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">
                    <i clas="fas fa-trash"></i> Hapus
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                 <span aria-hidden="true">&times;</span>    
                <button>
            </div>
            <div class="modal-body">
                Apakah yakin akan dihapus?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondy" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Ya, Hapus</button>
            </div>
        </form>
    </div>
</div>

@push('js')
<script>
$(function(){
    $('#modalDelete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var recipient = button.data('link') 
        var modal = $(this)
        modal.find('.modal-content').attr('action',recipient)
    })
});
</script>
@endpush