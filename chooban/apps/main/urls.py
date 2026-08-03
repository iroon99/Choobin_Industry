from django.urls import path
from .views import MainPage, AboutUs, ContactUs

urlpatterns = [
    path('', MainPage.as_view()),
    path('about-us/', AboutUs.as_view()),
    path('contact-us/', ContactUs.as_view())
]