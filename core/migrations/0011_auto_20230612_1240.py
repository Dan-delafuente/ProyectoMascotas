# Generated by Django 3.1.2 on 2023-06-12 16:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0010_auto_20230611_0239'),
    ]

    operations = [
        migrations.CreateModel(
            name='Carrito',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
                ('cuenta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.cuenta')),
            ],
        ),
        migrations.CreateModel(
            name='ItemCarrito',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField()),
                ('carrito', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.carrito')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.producto')),
            ],
        ),
        migrations.AddField(
            model_name='carrito',
            name='productos',
            field=models.ManyToManyField(through='core.ItemCarrito', to='core.Producto'),
        ),
    ]
