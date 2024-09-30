#ifndef __VBO_H__
#define __VBO_H__

#include <glad/gl.h>
#include <eigen3/Eigen/Eigen>

class VertexBufferArray
{
    public:
        GLuint ID;
        VertexBufferArray(float * vertices, GLsizeiptr size);

        void Bind();
        void Unbind();
        void Delete();
};

#endif