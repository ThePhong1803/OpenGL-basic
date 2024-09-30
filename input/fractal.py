def mandelbrot(c, max_iterations):
    z = 0
    n = 0
    while abs(z) <= 2 and n < max_iterations:
        z = z*z + c
        n += 1
    if n == max_iterations:
        return 0
    return n

def generate_mandelbrot_vertices_indices(width, height, max_iterations):
    vertices = []
    indices = []

    for x in range(width):
        for y in range(height):
            # Map pixel position to complex plane
            zx = (x - width/2) * 4 / width
            zy = (y - height/2) * 4 / width
            c = complex(zx, zy)
            # Calculate Mandelbrot set value
            m = mandelbrot(c, max_iterations)
            vertices.append([zx, zy, 0.0])  # Vertex position
            vertices.append([m, m, m])       # RGB color based on Mandelbrot value
            indices.append(x * height + y)   # Indices for each vertex

    return vertices, indices

if __name__ == "__main__":
    width, height = 640, 640
    max_iterations = 1
    vertices, indices = generate_mandelbrot_vertices_indices(width, height, max_iterations)

    # Save vertices and indices to files
    with open('mandelbrot_vertices.txt', 'w') as vertices_file:
        for vertex in vertices:
            vertices_file.write(" ".join(map(str, vertex)) + "\n")

    with open('mandelbrot_indices.txt', 'w') as indices_file:
        for index in indices:
            indices_file.write(str(index) + " ")
