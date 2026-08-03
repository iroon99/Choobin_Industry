from django.contrib import admin
from .models import SliderImage, CompanyInfo, Advertisement

# Register your models here.
@admin.register(SliderImage)
class SliderImageAdmin(admin.ModelAdmin):
    list_display = [
        'image_file',
        'image_title',
        'image_description',
        'is_active'
    ]


@admin.register(CompanyInfo)
class CompanyInfoAdmin(admin.ModelAdmin):
    list_display = [
        'company_name',
        'company_full_name',
        'company_slogan',
        'company_description',
        'company_logo',
        'company_address',
        'company_email',
        'company_phone'
    ]


@admin.register(Advertisement)
class AdvertisementAdmin(admin.ModelAdmin):
    list_display = [
        'advertisement_title',
        'advertisement_description',
        'advertisement_picture',
        'is_active'
    ]