@extends('app')

@section('content')
    <div class="container mt-5">
        <div class="row">
            @foreach ($houses as $house)
                <div class="col-sm-3 mb-5">
                    <div class="card bg-light" style="width: 18rem;">
                        <a href="{{ route('houses-show', ['id' => $house->id]) }}">
                            <img class="card-img-top" width="300" height="300" src="{{$house->photo}}" alt="Card image cap">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">Inmueble: {{ $house->shortDescription }}</h5>
                            <p class="card-text">Descripción: {{ $house->longDescription }}</p>
                            <p class="card-text">Precio: {{ $house->precio }}</p>

                            <a href="{{ route('houses-show', ['id' => $house->id]) }}" class="btn btn-primary">Ver
                                vivienda</a>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
@endsection
