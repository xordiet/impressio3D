import io
import bpy
import bmesh

#eliminem tots els objectes que hi puguin haver a l'escena
bpy.ops.object.select_all(action='SELECT')
bpy.ops.object.delete()

#obrim el csv amb els noms a gravar
fitxer = io.open('C:/Users/USUARI-A/Documents/impressio3D/noms.csv', 'r')
linies = fitxer.readlines()
for index in range(len(linies)):
    linies[index] = linies[index].replace('\n','')
fitxer.close()

#funció que genera la peça amb el nom
def dibuixa(escrit):
    #creem el cub base
    bpy.ops.mesh.primitive_cube_add(size=2, enter_editmode=False, align='WORLD', location=(0, 0, 0), scale=(1, 1, 1))
    bpy.ops.transform.resize(value=(8, 6, 2))
    cub = bpy.context.object

    #creem el texte
    bpy.ops.object.text_add(radius=3.0, enter_editmode=False, align='WORLD', location=(0, 0, 1), scale=(1, 1, 1))
    bpy.context.object.data.align_x = 'CENTER'
    bpy.context.object.data.align_y = 'CENTER'
    bpy.context.object.data.body = escrit
    bpy.context.object.data.extrude = 1

    #convertir el texte en mesh
    bpy.ops.object.convert(target='MESH')
    textemeu = bpy.context.object

    #perforar el cub
    mod_bool = cub.modifiers.new('my_bool_mod','BOOLEAN')
    mod_bool.operation = 'DIFFERENCE'
    mod_bool.object = textemeu
    bpy.context.view_layer.objects.active = cub
    res = bpy.ops.object.modifier_apply(modifier='my_bool_mod')

    #eliminar el texte original
    bpy.context.view_layer.objects.active = textemeu
    bpy.ops.object.delete()

    #exportar a stl
    nom = 'C:/Users/USUARI-A/Documents/impressio3D/bP'+escrit+'.stl'
    bpy.ops.export_mesh.stl(filepath=nom)

    #elimina els objectes
    bpy.ops.object.select_all(action='SELECT')
    bpy.ops.object.delete()

for name in linies:
    dibuixa(name)

# :)