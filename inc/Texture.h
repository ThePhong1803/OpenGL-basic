#ifndef __TEXTURE_H__
#define __TEXTURE_H__

#include <glad/gl.h>
#include <stb/stb_image.h>

#include <shader.h>

/**
 * @brief Texture handle class
 * 
 */
class Texture
{
    public:
        GLuint ID;
        GLuint type;

        /**
         * @brief Construct a new Texture:: Texture object
         * 
         * @param image the image name to load
         * @param texType type of the texture (i.e. GL_TEXTURE_1D, GL_TEXTURE_2D, etx)
         * @param slot the texture slot, openGL support up to 32 texture slot to be used
         * @param format the color type of input image
         * @param pixelType the type of input pixel data
         */
        Texture(const char * image, GLenum texType, GLenum slot, GLenum format, GLenum pixelType);

        void texUnit(Shader &shader, const char * uniform, GLuint unit);
        void Bind();
        void Unbind();
        void Delete();
};

#endif