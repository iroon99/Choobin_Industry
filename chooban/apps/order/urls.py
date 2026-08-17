from django.urls import path
from .views import AddOrder

urlpatterns = [
    path('add/', AddOrder.as_view())
]