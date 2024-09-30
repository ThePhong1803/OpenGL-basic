#include <Texture.h>

Texture::Texture(const char * image, GLenum texType, GLenum slot, GLenum format, GLenum pixelType)
{
    this -> type = texType;
    int widthImg, heightImg, numColCh;
    stbi_set_flip_vertically_on_load(true);
    unsigned char * bytes = stbi_load(image, &widthImg, &heightImg, &numColCh, 0);

    glGenTextures(1, &ID);
    // Activate texture
    glActiveTexture(slot);
    glBindTexture(texType, ID);
    // Define how texture should be processed
    glTexParameteri(texType, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(texType, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    // Repeat the texture over S (x) axis and T (y) axis
    glTexParameteri(texType, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(texType, GL_TEXTURE_WRAP_T, GL_REPEAT);

    // Border color if used border mode
    // float flatColor[] = {1.0f, 1.0f, 1.0f, 1.0f}l
    // glTexParameterfv(texType, GL_TEXTURE_BORDER_COLOR, flatColor);

    // Generature texture
    glTexImage2D(texType,                   // Type of texture
                 0,                         // dunno
                 GL_RGBA,                   // Type of color channel for texture
                 widthImg,                  // image width
                 heightImg,                 // image heigh
                 0,                         // dunno
                 format,                    // Type of color channel of input image
                 pixelType,                 // input type
                 bytes);                    // image input

    glGenerateMipmap(texType);
    stbi_image_free(bytes);
    glBindTexture(texType, 0);
}


/**
 * @brief Create texture unit for current texture object
 * 
 * @param shader The shader program object
 * @param uniform The uniform parameter of sampler2D for fragment shader
 * @param unit The unit number
 */
void Texture::texUnit(Shader &shader, const char * uniform, GLuint unit)
{
    GLuint tex0Uni = glGetUniformLocation(shader.ID, uniform);
    shader.Activate();
    glUniform1i(tex0Uni, unit);
}

void Texture::Bind()
{
    /* Bind the texture */
    glBindTexture(type, ID);
}

void Texture::Unbind()
{
    /* Unbind the texture */
    glBindTexture(type, 0);
}

void Texture::Delete()
{
    /* Delete the texture */
    glDeleteTextures(1, &ID);
}