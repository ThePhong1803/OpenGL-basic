#include <ElementBuffer.h>

ElementBuffer::ElementBuffer(GLuint * indices, GLsizeiptr size)
{
    idx = indices;
    this -> size = size;
    glGenBuffers(1, &ID);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ID);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, size, indices, GL_STATIC_DRAW);
}

ElementBuffer::ElementBuffer(const std::string& filename)
{
    GLsizeiptr length;
    GLuint * res = readFileContenti(filename, length);
    
    this -> idx = res;
    this -> size = length;
    glGenBuffers(1, &ID);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ID);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, length, this -> idx, GL_STATIC_DRAW);
}

ElementBuffer::~ElementBuffer()
{
    delete [] this -> idx;
}

void ElementBuffer::Bind()
{
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ID);
}

void ElementBuffer::Unbind()
{
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void ElementBuffer::Delete()
{
    glDeleteBuffers(1, &ID);
}