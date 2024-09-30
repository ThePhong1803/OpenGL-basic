import math

def generate_sphere_with_color_and_texture(latitude_divisions, longitude_divisions):
    vertices = []
    indices = []

    # Generate vertices with RGB color values and texture coordinates
    for lat in range(latitude_divisions + 1):
        theta = lat * math.pi / latitude_divisions
        sin_theta = math.sin(theta)
        cos_theta = math.cos(theta)

        for lon in range(longitude_divisions + 1):
            phi = lon * 2 * math.pi / longitude_divisions
            sin_phi = math.sin(phi)
            cos_phi = math.cos(phi)

            x = sin_theta * cos_phi
            y = cos_theta
            z = sin_theta * sin_phi

            # RGB color values
            r = lon / longitude_divisions
            g = lat / latitude_divisions
            b = 1.0 - r - g

            # Texture coordinates
            s = lon / longitude_divisions
            t = lat / latitude_divisions

            vertices.extend([x, y, z, r, g, b, s, t])

    # Generate indices
    for lat in range(latitude_divisions):
        for lon in range(longitude_divisions):
            current = lon + lat * (longitude_divisions + 1)
            next_vert = (lon + 1) + lat * (longitude_divisions + 1)

            indices.extend([current, next_vert, current + (longitude_divisions + 1)])
            indices.extend([next_vert, next_vert + (longitude_divisions + 1), current + (longitude_divisions + 1)])

    # Save to text files
    with open('sphere_vertices.txt', 'w') as vertices_file:
        for vertex in vertices:
            vertices_file.write(f"{vertex:.5f} ")
        vertices_file.write("\n")

    with open('sphere_indices.txt', 'w') as indices_file:
        for index in indices:
            indices_file.write(f"{index} ")
        indices_file.write("\n")

    print(len(vertices))
    print(len(indices))

generate_sphere_with_color_and_texture(360, 360)
