from rest_framework import viewsets
from .models import Notificacion
from .serializers import NotificacionSerializer
from rest_framework import generics


class NotificacionCreate(generics.ListCreateAPIView):
    queryset = Notificacion.objects.all()
    serializer_class = NotificacionSerializer

class NotificacionDetail(generics.RetrieveUpdateAPIView):
    queryset = Notificacion.objects.all()
    serializer_class = NotificacionSerializer


