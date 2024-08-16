from reservas.models import Sede, Habitacion

def DatosIniciales():

    Cali = Sede.objects.create(NomSede="Cali", CupoMaximo=150)
    Cartagena = Sede.objects.create(NomSede="Cartagena", CupoMaximo=100)
    Bogota = Sede.objects.create(NomSede="Bogotá", CupoMaximo=260)
    Barranquilla = Sede.objects.create(NomSede="Barranquilla", CupoMaximo=130)
    
    for _ in range(20):
        Habitacion.objects.create(Sede=Cali, TipoHabitacion='premium', CupoMax=6, TarifaTAlta="220000", TarifaTBaja="170000", Ocupado='no')
    for _ in range(2):
        Habitacion.objects.create(Sede=Cali, TipoHabitacion='vip', CupoMax=6, TarifaTAlta="300000", TarifaTBaja="250000", Ocupado='no')
    
    for _ in range(10):
        Habitacion.objects.create(Sede=Cartagena, TipoHabitacion='estandar', CupoMax=8, TarifaTAlta="150000", TarifaTBaja="120000", Ocupado='no')
    Habitacion.objects.create(Sede=Cartagena, TipoHabitacion='premium', CupoMax=8, TarifaTAlta="250000", TarifaTBaja="200000", Ocupado='no')
    
    for _ in range(20):
        Habitacion.objects.create(Sede=Bogota, TipoHabitacion='estandar', CupoMax=6, TarifaTAlta="120000", TarifaTBaja="90000", Ocupado='no')
    for _ in range(20):
        Habitacion.objects.create(Sede=Bogota, TipoHabitacion='premium', CupoMax=6, TarifaTAlta="200000", TarifaTBaja="150000", Ocupado='no')
    for _ in range(2):
        Habitacion.objects.create(Sede=Bogota, TipoHabitacion='vip', CupoMax=6, TarifaTAlta="300000", TarifaTBaja="260000", Ocupado='no')
    
    for _ in range(30):
        Habitacion.objects.create(Sede=Barranquilla, TipoHabitacion='estandar', CupoMax=4, TarifaTAlta="150000", TarifaTBaja="110000", Ocupado='no')
    for _ in range(3):
        Habitacion.objects.create(Sede=Barranquilla, TipoHabitacion='premium', CupoMax=4, TarifaTAlta="190000", TarifaTBaja="150000", Ocupado='no')
    
