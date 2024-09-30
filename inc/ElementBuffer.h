#ifndef __EBO_H__
#define __EBO_H__

#include <glad/gl.h>
#include <fileloader.h>
#include <eigen3/Eigen/Eigen>

class ElementBuffer
{
    public:
        GLuint ID;
        GLuint size;
        GLuint * idx;
        ElementBuffer(GLuint * indices, GLsizeiptr size);
        /**
         * @brief Construct a new Element Buffer object
         * 
         * @param filename Filename of index array
         */
        ElementBuffer(const std::string& filename);

        ~ElementBuffer();

        void Bind();
        void Unbind();
        void Delete();
};

#endif