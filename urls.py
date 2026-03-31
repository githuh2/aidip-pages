from django.urls import path

from . import views

app_name = "website"

urlpatterns = [
    path("", views.main, name="main"),
    path("patent/", views.patent, name="patent"),
    path("trademark/", views.trademark, name="trademark"),
    path("design/", views.design, name="design"),
    path("certification/", views.certification, name="certification"),
    path("tribunal/", views.tribunal, name="tribunal"),
    path("contact/", views.contact, name="contact"),
]
