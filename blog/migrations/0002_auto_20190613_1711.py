# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='categoria',
            options={'ordering': ['creado'], 'verbose_name': 'Servicio', 'verbose_name_plural': 'Servicios'},
        ),
        migrations.RemoveField(
            model_name='categoria',
            name='foto',
        ),
        migrations.AddField(
            model_name='categoria',
            name='numero',
            field=models.CharField(max_length=300, null=True, verbose_name='Numero', blank=True),
        ),
        migrations.AlterField(
            model_name='blog',
            name='descripcion',
            field=models.TextField(verbose_name='Descripci\xf3n', blank=True),
        ),
        migrations.AlterField(
            model_name='categoria',
            name='descripcion',
            field=models.TextField(verbose_name='Descripci\xf3n', blank=True),
        ),
        migrations.AlterField(
            model_name='marca',
            name='categoria',
            field=models.ForeignKey(verbose_name='Servicio', blank=True, to='blog.Categoria', null=True),
        ),
        migrations.AlterField(
            model_name='marca',
            name='descripcion',
            field=models.TextField(verbose_name='Descripci\xf3n', blank=True),
        ),
        migrations.AlterField(
            model_name='producto',
            name='categoria',
            field=models.ForeignKey(verbose_name='Servicio', blank=True, to='blog.Categoria', null=True),
        ),
        migrations.AlterField(
            model_name='producto',
            name='descripcion',
            field=models.TextField(verbose_name='Descripci\xf3n', blank=True),
        ),
    ]
