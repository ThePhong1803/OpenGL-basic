#include <glad/gl.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <eigen3/Eigen/Eigen>
#include <shader.h>
#include <ElementBuffer.h>
#include <VertexArray.h>
#include <fileloader.h>
#include <cmath>
#include <stb/stb_image.h>
#include <Texture.h>
#include <camera.h>

#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtx/string_cast.hpp>

const GLuint WIDTH = 640, HEIGHT = 640;

Camera camera(-3.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
float lastX = WIDTH / 2;
float lastY = HEIGHT / 2;
bool cam_forward = false, cam_backward = false, cam_left = false, cam_right = false, first_mouse = true, mouse_enable = true, wire_frame = false;

void framebuffer_size_callback(GLFWwindow * window, int width, int height);

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);

void mouse_callback(GLFWwindow * window, double xpos, double ypos);

void scroll_callback(GLFWwindow * window, double xoffset, double yoffset);

void process_input(float dt);

int main(){
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);

    GLFWwindow * window = glfwCreateWindow(WIDTH, HEIGHT, "GUI", NULL, NULL);
    glfwMakeContextCurrent(window);
    if(!window) {
        std::cout << "Failed to create GLFW window\n";
        glfwTerminate();
        return -1;
    }
    int version = gladLoadGL(glfwGetProcAddress);
    if (version == 0)
    {
        std::cout << "Failed to initialize OpenGL context" << std::endl;
        return -1;
    }

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetScrollCallback(window, scroll_callback); 
    // Set up vertex data and buffer and configure vertex attributes
    // raw rendering data
    GLsizeiptr mat_size;
    GLfloat *  mat = readFileContentf("./input/sphere_vertices.txt", mat_size);
    std::cout << "Vertices loaded\n";
    Shader shader("./shader/vertex", "./shader/fragment");
    VertexArray VAO;
    VertexBufferArray VertexBuffer(mat, mat_size);
    ElementBuffer EBO("./input/sphere_indices.txt");
    std::cout << "Indices loaded\n";
    VAO.Bind();
    EBO.Bind();
    VAO.LinkVertexBufferArray(VertexBuffer, 0, 3, GL_FLOAT, 8 * sizeof(float), NULL);                           // linking vertices
    VAO.LinkVertexBufferArray(VertexBuffer, 1, 3, GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));     // linking color atrrib
    VAO.LinkVertexBufferArray(VertexBuffer, 2, 2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));     // linking texture coordinates

    // Create texture object
    Texture tex("./texture/texture.png", GL_TEXTURE_2D, GL_TEXTURE0, GL_RGBA, GL_UNSIGNED_BYTE);
    tex.texUnit(shader, "tex0", 0);

    float rotation = 0.0f;
    double prevTime = glfwGetTime();

    glEnable(GL_DEPTH_TEST);
    while(!glfwWindowShouldClose(window)){
        // Rendering Command
        glClearColor(0.07f, 0.17f, 0.2f, 1.0f);
        // Clear the back buffer
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        // Tell the opengl the shader program gonna use
        shader.Activate();
        double currTime = glfwGetTime();
        process_input(currTime - prevTime);
        if(currTime - prevTime > 0){
            rotation += 0.5f;
            prevTime = currTime;
        }

        glm::mat4 model = glm::mat4(1.0f);      // model matrix, projectile to world coordinate
        glm::mat4 view = glm::mat4(1.0f);       // view matrix, projectile to view coordinate
        glm::mat4 proj = glm::mat4(1.0f);       // projection matrix, projectile to clip coord and to screen

        int modelLocation = glGetUniformLocation(shader.ID, "model");
        int viewLocation = glGetUniformLocation(shader.ID, "view");
        int projLocation = glGetUniformLocation(shader.ID, "proj");

        model = glm::rotate(model, glm::radians(rotation), glm::vec3(0.0f, 1.0f, 0.0f));
        view = camera.GetViewMatrix();
        proj = glm::perspective(glm::radians(camera.zoom), (float)WIDTH/HEIGHT, 0.1f, 100.0f);

        glUniformMatrix4fv(modelLocation, 1, GL_FALSE, glm::value_ptr(model));
        glUniformMatrix4fv(viewLocation, 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(projLocation, 1, GL_FALSE, glm::value_ptr(proj));

        
        tex.Bind();
        VAO.Bind();
        // glDrawArrays(GL_TRIANGLE_STRIP, 0, EBO.size);
        glDrawElements(GL_TRIANGLES, EBO.size / sizeof(GLuint), GL_UNSIGNED_INT, 0);
        /*
            The first parameter is the type of primitive to draw
            The second parameter is the index if the first vertex
            The last parameter is the number of vertex to draw
        */
        glfwSwapBuffers(window);
        // Check if any event has been activated
        glfwPollEvents();
    }
    VAO.Delete();
    VertexBuffer.Delete();
    EBO.Delete();
    tex.Delete();
    glfwTerminate();

    delete [] mat;
    return 0;
}

// Window callback function
void framebuffer_size_callback(GLFWwindow * window, int width, int height)
{
    glViewport(0, 0, width, height);
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
    if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GL_TRUE);
    if(key == GLFW_KEY_TAB && action == GLFW_PRESS){
        if(wire_frame){
            glPolygonMode( GL_FRONT_AND_BACK, GL_FILL);
            wire_frame = false;
        } else {
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
            wire_frame = true;
        }
    }
    if(key == GLFW_KEY_LEFT_ALT && action == GLFW_PRESS){
        if(!mouse_enable){
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            glfwSetCursorPosCallback(window, mouse_callback);
            glfwSetScrollCallback(window, scroll_callback); 
            mouse_enable = true;
            first_mouse = true;
        } else {
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            glfwSetCursorPosCallback(window, nullptr);
            glfwSetScrollCallback(window, nullptr); 
            mouse_enable = false;
        }
    }
    if(key == GLFW_KEY_UP && (action == GLFW_PRESS || action == GLFW_REPEAT)){
        cam_forward = true;
    }
    if(key == GLFW_KEY_DOWN && (action == GLFW_PRESS || action == GLFW_REPEAT)){
        cam_backward = true;
    }
    if(key == GLFW_KEY_LEFT && (action == GLFW_PRESS || action == GLFW_REPEAT)){
        cam_left = true;
    }
    if(key == GLFW_KEY_RIGHT && (action == GLFW_PRESS || action == GLFW_REPEAT)){
        cam_right = true;
    }
}

void mouse_callback(GLFWwindow * window, double xpos, double ypos)
{
    if(first_mouse){
        lastX = xpos;
        lastY = ypos;
        first_mouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos;
    lastX = xpos;
    lastY = ypos;

    camera.mouse_input(xoffset, yoffset, true);
}

void scroll_callback(GLFWwindow * window, double xoffset, double yoffset)
{
    camera.mouse_scroll(yoffset);
}

void process_input(float dt)
{
    if(cam_forward){
        camera.keyboard_input(FORWARD, dt);
        cam_forward = false;
    }
    if(cam_backward){
        camera.keyboard_input(BACKWARD, dt);
        cam_backward = false;
    }
    if(cam_left){
        camera.keyboard_input(LEFT, dt);
        cam_left = false;
    }
    if(cam_right){
        camera.keyboard_input(RIGHT, dt);
        cam_right = false;
    }
}