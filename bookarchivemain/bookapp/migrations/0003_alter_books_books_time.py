# Generated by Django 5.0.1 on 2024-02-13 16:56

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bookapp', '0002_alter_books_books_time'),
    ]

    operations = [
        migrations.AlterField(
            model_name='books',
            name='books_time',
            field=models.DateField(default=datetime.datetime(2024, 2, 13, 19, 56, 28, 178814)),
        ),
    ]
