#include <fileloader.h>

char* readFileContent(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary | std::ios::ate);
    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        return nullptr;
    }

    std::streamsize fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    char* content = new char[fileSize + 1];
    file.read(content, fileSize);
    content[fileSize] = '\0';

    file.close();
    return content;
}

Eigen::MatrixXf readMatrixFromFile(const std::string &filename) {
    std::ifstream file(filename);

    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        exit(EXIT_FAILURE);
    }

    std::vector<std::vector<float>> matrixData;
    float value;
    while(file >> value)
    {
        matrixData.push_back({value});
    }
    
    int rows = matrixData.size();
    int cols = (rows > 0) ? matrixData.size() : 0;
    Eigen::MatrixXf resultMatrix(rows, cols);
    for(int i = 0; i < rows; i++){
        for(int j = 0; j < cols; j++){
            resultMatrix(i, j) = matrixData[i][j];
        }
    }
    return resultMatrix;
}

GLuint * readFileContenti(const std::string &filename, GLsizeiptr &size){
    std::ifstream file(filename);

    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        exit(EXIT_FAILURE);
    }

    std::vector<unsigned int> vec;
    unsigned int value;
    while (file >> value){
        vec.push_back(value);
    }

    GLuint * res = new GLuint [vec.size()];
    for(int i = 0; i < vec.size(); i++){
        res[i] = vec[i];
    }

    size = vec.size() * sizeof(GLuint);
    return res;
}

GLfloat * readFileContentf(const std::string &filename, GLsizeiptr &size){
    std::ifstream file(filename);

    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        exit(EXIT_FAILURE);
    }

    std::vector<float> vec;
    float value;
    while (file >> value){
        vec.push_back(value);
    }

    GLfloat * res = new GLfloat [vec.size()];
    for(int i = 0; i < vec.size(); i++){
        res[i] = vec[i];
    }

    size = vec.size() * sizeof(GLfloat);
    return res;
}
