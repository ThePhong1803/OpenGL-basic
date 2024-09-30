#ifndef __FILE_LOADER_H__
#define __FILE_LOADER_H__

#include <iostream>
#include <fstream>
#include <eigen3/Eigen/Eigen>
#include <glad/gl.h>

char* readFileContent(const std::string& filename);

GLuint * readFileContenti(const std::string &filename, GLsizeiptr &size);

GLfloat * readFileContentf(const std::string &filename, GLsizeiptr &size);

Eigen::MatrixXf readMatrixFromFile(const std::string &filename);

#endif