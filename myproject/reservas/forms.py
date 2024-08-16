from django import forms
from .models import Sede, Temporada

class ReservaForm(forms.Form):
    Sede = forms.ModelChoiceField(queryset=Sede.objects.all(), required=True, label="Sede")
    TipoHabitacion = forms.ChoiceField(
        choices=[('estandar', 'Estandar'), ('premium', 'Premium'), ('vip', 'VIP')],
        required=True, label="Tipo de Habitación"
    )
    FechaInicio = forms.DateField(widget=forms.SelectDateWidget(), required=True, label="Fecha de Inicio")
    FechaFin = forms.DateField(widget=forms.SelectDateWidget(), required=True, label="Fecha de Fin")
    NumPersonas = forms.IntegerField(required=True, label="Número de Personas")
    
class TemporadaForm(forms.ModelForm):
    class Meta:
        model = Temporada
        fields = ['TtipoTemporada', 'fecha_inicio', 'fecha_fin']
        widgets = {
            'fecha_inicio': forms.SelectDateWidget(),
            'fecha_fin': forms.SelectDateWidget(),
        }