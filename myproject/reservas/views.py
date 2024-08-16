from django.shortcuts import render, redirect
from .models import Sede, Habitacion, Temporada
from .forms import TemporadaForm, ReservaForm
from django.utils import timezone


def AgregarTemporada(request):
    if request.method == 'POST':
        form = TemporadaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('AgregarTemporada') 
    else:
        form = TemporadaForm()
    
    return render(request, 'reservas/AgregarTemporada.html', {'form': form})

def CalcularTarifa(FechaInicio, FechaFin, TarifaAlta, TarifaBaja):
    temporadas = Temporada.objects.filter(fecha_inicio__lte=FechaInicio, fecha_fin__gte=FechaFin)
    
    if temporadas:
        return TarifaAlta
    return TarifaBaja
def CarritoReserva(request):
    if request.method == 'POST':
        form = ReservaForm(request.POST)
        if form.is_valid():
            sede = form.cleaned_data['Sede']
            tipohabitacion = form.cleaned_data['TipoHabitacion']
            fechainicio = form.cleaned_data['FechaInicio']
            fechafin = form.cleaned_data['FechaFin']
            numpersonas = form.cleaned_data['NumPersonas']

            HabitacionesDisponibles = Habitacion.objects.filter(
                Sede=sede,
                TipoHabitacion=tipohabitacion,
                Ocupado='no'
            )


            return render(request, 'reservas/CarritoReserva.html')
    else:
        form = ReservaForm()

    return render(request, 'reservas/CarritoReserva.html', {'form': form})