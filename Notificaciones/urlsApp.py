from django.urls import path
from .views import NotificacionCreate,NotificacionDetail

urlpatterns = [
    path('App/', NotificacionCreate.as_view(), name='Notificacion-list-create'),
    path('App/<int:pk>/', NotificacionDetail.as_view(), name='Notificacion-detail'),
]