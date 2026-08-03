from django import forms
from .models import UserMessage

class ContactForm(forms.ModelForm):
    user_name = forms.CharField(label='نام', widget=forms.TextInput(attrs={'class':'form-control'}))
    user_family = forms.CharField(label='نام خانوادگی', widget=forms.TextInput(attrs={'class':'form-control'}))
    user_email = forms.EmailField(label='ایمیل', widget=forms.TextInput(attrs={'class':'form-control'}))
    message_title = forms.CharField(label='عنوان پیام', widget=forms.TextInput(attrs={'class':'form-control'}))
    message_text = forms.CharField(label='متن پیام', widget=forms.Textarea(attrs={'class': 'form-control', 'rows': 8}))

    class Meta:
        model = UserMessage
        fields = [
            'user_name',
            'user_family',
            'user_email',
            'message_title',
            'message_text'
        ]
