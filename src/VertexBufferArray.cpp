#include <VertexBufferArray.h>

VertexBufferArray::VertexBufferArray(float * vertices, GLsizeiptr size)
{
    glGenBuffers(1, &ID);
    glBindBuffer(GL_ARRAY_BUFFER, ID);
    glBufferData(GL_ARRAY_BUFFER, size, vertices, GL_STATIC_DRAW);
}

void VertexBufferArray::Bind()
{
    glBindBuffer(GL_ARRAY_BUFFER, ID);
}

void VertexBufferArray::Unbind()
{
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void VertexBufferArray::Delete()
{
    glDeleteBuffers(1, &ID);
}