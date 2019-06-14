# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='categoria',
            name='numero',
            field=models.CharField(max_length=300, null=True, verbose_name='Numero', blank=True),
        ),
    ]
