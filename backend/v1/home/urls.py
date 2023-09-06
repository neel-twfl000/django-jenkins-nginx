from django.urls import path, include
from .import views
from .import api_views as api
from rest_framework.routers import DefaultRouter

router = DefaultRouter()

router.register(r'test', api.HomeView, basename="home")

urlpatterns = [
    path('', views.home),

    path('api/', include(router.urls))

]