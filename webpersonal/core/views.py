from django.shortcuts import render, HttpResponse

# Create your views here.
def home(request):
    #return HttpResponse(html_base + """<h1>Principal</h1><h2>home</h2>""")
    return render(request, "core/home.html")

def about(request):
    #return HttpResponse(html_base + """<h1>Acerca de</h1><h2>Me llamo Teffo</h2>""")
    return render(request, "core/about.html")

def portfolio(request):
    #return HttpResponse(html_base + """<h1>Portafolio</h1><h2>Site Reliability Engineer, Google Cloud Certified</h2>""")
    return render(request, "core/portfolio.html")


def contact(request):
    #return HttpResponse(html_base + """<h1>Contacto</h1><h2>Mi correo es esteban.eagd@gmail.com</h2>""")
    return render(request, "core/contact.html")

def donotclick(request):
    return render(request, "core/donotclick.html")