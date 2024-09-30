#ifndef __CAMERA_H__
#define __CAMERA_H__

#include <glm/gtc/matrix_transform.hpp>
#include <glm/glm.hpp>
#include <glad/gl.h>

const float YAW         = -90.0f;
const float PITCH       = 0.0f;
const float SPEED       = 2.5f;
const float SENS        = 0.1f;
const float ZOOM        = 45.0f;

enum Camera_movement {
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT,
};

class Camera
{
    public:
        // Camera atrribute
        glm::vec3 Pos;
        glm::vec3 Front;
        glm::vec3 Up;
        glm::vec3 Right;
        glm::vec3 Worldup;

        // Mouse controller parameter
        float yaw;
        float pitch;

        // Option
        float moveSpd;
        float moveSns;
        float zoom;

        // Constructor with vectors input
        Camera(glm::vec3 pos, glm::vec3 up, float yaw, float pitch);
        // Constructor with coordinates input
        Camera(float xpos, float ypos, float zpos, float xup, float yup, float zup);

        glm::mat4 GetViewMatrix();

        void keyboard_input(Camera_movement direction, float dt);
        
        void mouse_input(float xoffset, float yoffset, GLboolean constrainPitch);

        void mouse_scroll(float yoffset);

        private:
        void updateCameraVectors();
};

#endif