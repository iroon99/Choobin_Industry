from django.shortcuts import render
from .models import SliderImage, CompanyInfo, Advertisement, UserMessage
from django.views import View
from .forms import ContactForm

# Create your views here.
class MainPage(View):
    def get(self, request):
        company_info = CompanyInfo.objects.get()
        slider_images = SliderImage.objects.filter(is_active = True)
        context = {
            'company_info' : company_info,
            'slider_images' : slider_images
        }
        return render(request, "main/main_page.html", context)


class AboutUs(View):
    def get(self, request):
        company_info = CompanyInfo.objects.get()
        slider_images = SliderImage.objects.filter(is_active = True)
        advertisements = Advertisement.objects.filter(is_active=True)
        context = {
            'company_info' : company_info,
            'slider_images' : slider_images,
            'advertisements' : advertisements
        }
        return render(request, "main/about_us.html", context)
    
class ContactUs(View):
    def get(self, request):
        company_info = CompanyInfo.objects.get()
        contactForm = ContactForm()
        submited = False
        context = {
            'company_info' : company_info,
            'contact_form' : contactForm,
            'submited': submited
        }
        return render(request, "main/contact_us.html", context)

    def post(self, request):
        company_info = CompanyInfo.objects.get()
        contactForm = ContactForm(request.POST)
        if contactForm.is_valid():
            data = contactForm.cleaned_data
            msg = UserMessage()
            msg.user_name = data["user_name"]
            msg.user_family = data["user_family"]
            msg.user_email = data["user_email"]
            msg.message_title = data["message_title"]
            msg.message_text = data["message_text"]
            msg.is_seen = False
            msg.save()
            
            submited = True
            contactForm = ContactForm()

        else:
            contactForm = ContactForm()

        context = {
            'company_info' : company_info,
            'contact_form' : contactForm,
            'submited': submited
        }
        return render(request, "main/contact_us.html", context)
