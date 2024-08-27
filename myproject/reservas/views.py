from django.shortcuts import render, redirect
from .models import Sede, Habitacion, Temporada
from .forms import TemporadaForm, ReservaForm
from django.utils import timezone
from django.http import JsonResponse

def AgregarTemporada(request):
    if request.method == 'POST':
        form = TemporadaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('AgregarTemporada') 
    else:
        form = TemporadaForm()
    
    return render(request, 'reservas/AgregarTemporada.html', {'form': form})




def CalcularTarifa(FechaInicio, FechaFin, habitacion):

    temporadas = Temporada.objects.filter(
        fecha_inicio__lte=FechaFin, 
        fecha_fin__gte=FechaInicio
    )

    if temporadas.exists():

        return float(habitacion.TarifaTAlta)
    
    return float(habitacion.TarifaTBaja)

def CarritoReserva(request):

    form = ReservaForm()

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

            habitaciones_necesarias = 0
            tarifa_por_noche = 0
            tarifa_total = 0

            if HabitacionesDisponibles.exists():
                tarifa_por_noche = float(CalcularTarifa(fechainicio, fechafin, HabitacionesDisponibles[0]))

                numero_noches = (fechafin - fechainicio).days

                for habitacion in HabitacionesDisponibles:
                    habitaciones_necesarias = (numpersonas + habitacion.CupoMax - 1) // habitacion.CupoMax
                    
                    tarifa_total = habitaciones_necesarias * tarifa_por_noche * numero_noches

            context = {
                'form': form,
                'habitaciones_necesarias': habitaciones_necesarias,
                'tarifa_por_noche': "{:,.0f}".format(tarifa_por_noche).replace(",", "."),
                'tarifa_total': "{:,.0f}".format(tarifa_total).replace(",", ".")
            }

            return render(request, 'reservas/CarritoReserva.html', context)

    return render(request, 'reservas/CarritoReserva.html', {'form': form})

def TiposHabitaciones(request):

    sede = request.GET.get('sede_id')
    habitaciones = Habitacion.objects.filter(Sede=sede).values('TipoHabitacion').distinct()
    
    TiposHabitaciones = list(habitaciones)
    
    return JsonResponse(TiposHabitaciones, safe=False)