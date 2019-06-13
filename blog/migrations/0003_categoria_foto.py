# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20190613_1711'),
    ]

    operations = [
        migrations.AddField(
            model_name='categoria',
            name='foto',
            field=models.ImageField(null=True, upload_to='categorias', blank=True),
        ),
    ]
