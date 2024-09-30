#include <VertexArray.h>

VertexArray::VertexArray()
{
    glGenVertexArrays(1, &ID);
}

void VertexArray::LinkVertexBufferArray(VertexBufferArray &VBO, GLuint layout, GLuint numComponent, GLenum type, GLsizeiptr stride, void * offset)
{
    VBO.Bind();
    glVertexAttribPointer(layout,               // position of vertex attribute
                          numComponent,         // how many value per vertex   
                          type,                 // vertex value type
                          GL_FALSE,             // only matter if coordinate is integer
                          stride,               // stride between vertex, since we have 3 float for each vertex
                          offset);              // offset pointer to where the vertices begin

    glEnableVertexAttribArray(layout);            // 0: position of vertex attribute

    // VBO.Unbind()
}

void VertexArray::Bind()
{
    glBindVertexArray(ID);
}

void VertexArray::Unbind()
{
    glBindVertexArray(0);
}

void VertexArray::Delete()
{
    glDeleteVertexArrays(1, &ID);
}