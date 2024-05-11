from django.shortcuts import render, HttpResponse

html_base = """ 
<h1> Web Personal </h1>
<ul>
    <li><a href="/">Principal</a></li>
    <li><a href="/about/">Acerca de<a/a></li>
    <li><a href="/portfolio/">Portafolio<a/a></li>
    <li><a href="/contact/">Contacto<a/a></li>
</ul>
"""

# Create your views here.
def home(request):
    return HttpResponse(html_base + """<h1>Principal</h1><h2>home</h2>""")

def about(request):
    return HttpResponse(html_base + """<h1>Acerca de</h1><h2>Me llamo Teffo</h2>""")

def portfolio(request):
    return HttpResponse(html_base + """<h1>Portafolio</h1><h2>Site Reliability Engineer, Google Cloud Certified</h2>""")

def contact(request):
    return HttpResponse(html_base + """<h1>Contacto</h1><h2>Mi correo es esteban.eagd@gmail.com</h2>""")