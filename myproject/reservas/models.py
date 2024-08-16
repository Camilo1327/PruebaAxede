from django.db import models

class Temporada(models.Model):
    TEMPORADA_CHOICES = [
        ('alta', 'Alta'),
        ('baja', 'Baja'),
    ]
    TtipoTemporada = models.CharField(max_length=6, choices=TEMPORADA_CHOICES)
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()


class Sede(models.Model):
    IdSede = models.AutoField(primary_key=True)
    NomSede = models.CharField(max_length=20)
    CupoMaximo = models.IntegerField()
    def __str__(self):
        return f"{self.NomSede}"

class Habitacion(models.Model):
    IdHabitacion = models.AutoField(primary_key=True)
    TIPO_HABITACION = [
        ('estandar','Estandar'),
        ('premium','Premium'),
        ('vip', 'VIP')
    ]
    TipoHabitacion = models.CharField(max_length=10, choices=TIPO_HABITACION)
    CupoMax = models.IntegerField()
    Sede = models.ForeignKey(Sede, on_delete=models.CASCADE)
    OCUPADO_CHOICES = [
        ('si','SI'),
        ('no','NO'),
    ]
    Ocupado = models.CharField(max_length=3, choices=OCUPADO_CHOICES)
    TarifaTAlta = models.CharField(max_length=10)
    TarifaTBaja = models.CharField(max_length=10)

class Reserva(models.Model):
    Sede = models.ForeignKey(Sede, on_delete=models.CASCADE)
    Habitacion = models.ForeignKey(Habitacion, on_delete=models.CASCADE)
    FechaInicio = models.DateField()
    FechaFin = models.DateField()
    NumPersonas = models.IntegerField()
    TarifaTotal = models.IntegerField()
