from django.shortcuts import render


def main(request):
    return render(request, "website/index.html")


def patent(request):
    return render(request, "website/patent.html")


def trademark(request):
    return render(request, "website/trademark.html")


def design(request):
    return render(request, "website/design.html")


def certification(request):
    return render(request, "website/certification.html")


def tribunal(request):
    return render(request, "website/tribunal.html")


def contact(request):
    return render(request, "website/contact.html")
