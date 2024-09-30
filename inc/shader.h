#ifndef __SHADER_H__
#define __SHADER_H__

#include <glad/gl.h>
#include <fstream>
#include <sstream>
#include <string>
#include <iostream>
#include <fileloader.h>

char* readFileContent(const std::string& filename);

class Shader
{
    public:
        GLuint ID;
        Shader(const std::string& vertexFile, const std::string& fragmentFile);

        void Activate();
        void Delete();
};
#endif