#ifndef __VAO_H__
#define __VAO_H__

#include <glad/gl.h>
#include <VertexBufferArray.h>

class VertexArray 
{
    public:
        GLuint ID;
        VertexArray();

        void LinkVertexBufferArray(VertexBufferArray &VBO, GLuint layout, GLuint numComponent, GLenum type, GLsizeiptr stride, void * offset);
        void Bind();
        void Unbind();
        void Delete();
};

#endif