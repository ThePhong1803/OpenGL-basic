#include <shader.h>

Shader::Shader(const std::string& vertexFile, const std::string& fragmentFile)
{
    const char * vertexCode = readFileContent(vertexFile);
    const char * fragmentCode = readFileContent(fragmentFile);

    // Vertex Shader compile
    unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexCode, NULL);
    glCompileShader(vertexShader);

    // Vertex Shader log
    int success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
    if(!success){
        std::cout << "ERROR: Vertex shader compilation failed\n" << infoLog << std::endl;
    } else {
        std::cout << "[LOG]: " << "Vertex shader compiled success!" << std::endl;
    }

    // Fragment shader compile
    unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentCode, NULL);
    glCompileShader(fragmentShader);

    // Fragment shader log
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
    if(!success){
        std::cout << "ERROR: Fragment shader compilation falied\n" << infoLog << std::endl;
    } else {
        std::cout << "[LOG]: " << "Fragment shader compiled success!" << std::endl;
    }

    // delete the shader soruce doe
    delete [] vertexCode;
    delete [] fragmentCode;

    // Shader program
    this -> ID = glCreateProgram();
    glAttachShader(ID, vertexShader);
    glAttachShader(ID, fragmentShader);
    glLinkProgram(ID);

    // Shader program log
    glGetProgramiv(ID, GL_LINK_STATUS, &success);
    glGetShaderInfoLog(ID, 512, NULL, infoLog);
    if(!success){
        std::cout << "ERROR: Shader program compilation failed\n" << infoLog << std::endl;
    } else {
        std::cout << "[LOG]: " << "Shader program compiled sucess!" << std::endl;
    }
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
}

void Shader::Activate()
{
    glUseProgram(this -> ID);
}

void Shader::Delete()
{
    glDeleteProgram(this -> ID);
}