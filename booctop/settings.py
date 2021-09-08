"""
Django settings for booctop project.

Generated by 'django-admin startproject' using Django 3.0.6.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.0/ref/settings/
"""

import os
from django.utils.translation import ugettext_lazy as _
from django.core.paginator import Paginator

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'nrt8ic@)p68r!c*%4v0$r=cg2a!@mf#jrye54)s%6&djxl*42k'

# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = False
DEBUG = True

ALLOWED_HOSTS = ['*']

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.gmail.com'

EMAIL_HOST_USER = 'migumongkk@gmail.com'
# EMAIL_HOST_USER = 'booctepdotcom2030@gmail.com'
# EMAIL_HOST_USER = 'parshotam.kumar32@gmail.com'
# EMAIL_HOST_PASSWORD = 'booctepgmailcom1011'
# EMAIL_HOST_PASSWORD = 'parshotam@g'
EMAIL_HOST_PASSWORD = '$lovelypassword'
EMAIL_PORT = 587


# Application definition

INSTALLED_APPS = [
    
    'home',
    'django.contrib.admin',
    # 'django.contrib.admin.apps.SimpleAdminConfig',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'teacher',
    'student',
    'video',
    'social_django',
    'discount',
    'paypal.standard.ipn',
    'payment',
    'django_social_share',
    
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',

    # multi language
    'django.middleware.locale.LocaleMiddleware',

]

ROOT_URLCONF = 'booctop.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'booctop/templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'social_django.context_processors.backends', # social signup
                'social_django.context_processors.login_redirect',  # and this
            ],
        },
    },
]

WSGI_APPLICATION = 'booctop.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.0/ref/settings/#databases
# DATABASES = {
     # 'default': {
         # 'ENGINE': 'django.db.backends.sqlite3',
         # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
     # }
 # }


# DATABASES = {
#    'default': {
#       'ENGINE': 'django.db.backends.mysql',
#       'NAME': 'booctop',
#       'USER': 'root',
#       'PASSWORD': 'root',
#       'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
#       'PORT': '3306',
#   }

DATABASES = {
   'default': {
      'ENGINE': 'django.db.backends.mysql',
      'NAME': 'booctop2',
      'USER': 'root',
      'PASSWORD': 'E05e809256f833e23e2d639f311@',
      'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
      'PORT': '3306',
  }
  # 'default': {
  #       'ENGINE': 'django.db.backends.mysql',
  #       'NAME': 'booctop',
  #       'USER':'root',
  #       'PASSWORD':'root',
  #       'HOST':'127.0.0.1',
  #       'PORT':'8889',
  #   'OPTIONS': {
  #       'charset': 'utf8mb4',
  #       'use_unicode': True,
  #     }
  # }
}

# Password validation
# https://docs.djangoproject.com/en/3.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.0/topics/i18n/

LANGUAGE_CODE = 'ar'

# LANGUAGE_COOKIE_NAME = 'django-language'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True
# STATICFILES_DIRS = (
    # os.path.normpath(os.path.join(BASE_DIR, '/booctop/static/')),
# )

LOCALE_PATHS = (
   os.path.join(BASE_DIR, 'locale'),
   os.path.join(BASE_DIR, 'home/locale'),   
   os.path.join(BASE_DIR, 'teacher/locale'),   
)

LANGUAGES = (
    ('en', _('English')),
    ('ar', _('Arabic')),
)

MULTILINGUAL_LANGUAGES = (    
    "en-us",
    "ar",
)

# PREFIX_DEFAULT_LOCALE = 'ar'
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.0/howto/static-files/

# STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, "booctop/statics")

STATIC_URL = '/static/'
BASE_URL = 'http://127.0.0.1:8000'
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, "booctop/static"),
)
SESSION_COOKIE_AGE = 60 * 60 * 24 * 365 * 5  # set session expire time as 5 years

AUTH_USER_MODEL = 'home.User'
AUTHENTICATION_BACKENDS = [
    'home.backends.EmailAuthBackend',
    # 'django.contrib.auth.backends.ModelBackend',
    'social_core.backends.google.GoogleOAuth2',
    # 'social_core.backends.linkedin.LinkedinOAuth2',
    'social_core.backends.instagram.InstagramOAuth2',
    'social_core.backends.facebook.FacebookOAuth2',
    'social_core.backends.twitter.TwitterOAuth',
    'django.contrib.auth.backends.ModelBackend',
]

# django-paypal settings
PAYPAL_RECEIVER_EMAIL = 'sjcdas-facilitator@gmail.com'
PAYPAL_TEST = True

LOGIN_URL = 'login'

LOGIN_REDIRECT_URL = 'http://localhost:8000/en/'
LOGOUT_REDIRECT_URL = 'logout'

SOCIAL_AUTH_FACEBOOK_KEY = '466816721163746'  # App ID
SOCIAL_AUTH_FACEBOOK_SECRET = '2cf20f71ac45a3bb45d4b14214874e7e'  # App Secret
SOCIAL_AUTH_FACEBOOK_SCOPE = ['email', 'user_link'] # add this
SOCIAL_AUTH_FACEBOOK_PROFILE_EXTRA_PARAMS = {       # add this
  'fields': 'id, name, email, picture.type(large)'
}
SOCIAL_AUTH_FACEBOOK_EXTRA_DATA = [ 
    ('email', 'email'),
    ('picture', 'image'),
    ('1', 'group_id'),
]
SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = '466107803379-bshhl2pa7dpfdu60cooighn975ttpl84.apps.googleusercontent.com'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = 'R0lfpjHGtqXPNRC7O8YzaVql'

SOCIAL_AUTH_INSTAGRAM_KEY = '267910061521683'         #Client ID
SOCIAL_AUTH_INSTAGRAM_SECRET = '95c0b482253e9eb434b35acfcdb106b5'  #Client SECRET
# SOCIAL_AUTH_INSTAGRAM_EXTRA_DATA = [         ('user', 'user'),]
