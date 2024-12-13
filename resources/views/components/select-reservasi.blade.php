@props(['label','name','value'=>'','dataOption'=>[] ])
<?php 
$value = old($name,$value);
?>
<div class="form-group row">
    <label class="col-4 col-form-label text-right"><?= $label?></label>
    <div class="col">
        <select name="{{ $name }}" 
            class="form-control {{ $errors->has($name) ? ' is-invalid' : '' }}">
            <option value="">Pilih</option>
            @foreach ( $dataOption as $row )
                @if ($row['value'] == $value)
                <option value="{{ $row['value'] }}" selected> {{ $row['option']  }}</option>
                @else
                <option value="{{ $row['value'] }}"> {{ $row['option'] }}</option>
                @endif
            @endforeach
        </select>
    </div>
</div>

