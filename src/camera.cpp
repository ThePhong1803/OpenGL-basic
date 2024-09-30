#include <camera.h>


// Constructor with vectors input
Camera::Camera(glm::vec3 pos = glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), float yaw = YAW, float pitch = PITCH) : Front(glm::vec3(0.0f, 0.0f, -1.0f)), moveSpd(SPEED), moveSns(SENS), zoom(ZOOM)
{
    this -> Pos = pos;
    this -> Worldup = up;
    this -> yaw = yaw;
    this -> pitch = pitch;
    this -> updateCameraVectors();
}

// Constructor with coordinates input
Camera::Camera(float xpos, float ypos, float zpos, float xup = 0.0f, float yup = 1.0f, float zup = 0.0f) : Front(glm::vec3(0.0f, 0.0f, -1.0f)), moveSpd(SPEED), moveSns(SENS), zoom(ZOOM)
{
    this -> Pos = glm::vec3(xpos, ypos, zpos);
    this -> Worldup = glm::vec3(xup, yup, zup);
    this -> yaw = yaw;
    this -> pitch = yaw;
    this -> updateCameraVectors();
}

void Camera::updateCameraVectors()
{
    // Calculate new front vector
    glm::vec3 front;
    front.x = cos(glm::radians(this -> yaw)) * cos(glm::radians(this -> pitch));
    front.y = sin(glm::radians(this -> pitch));
    front.z = sin(glm::radians(this -> yaw)) * cos(glm::radians(this -> pitch));
    this -> Front = glm::normalize(front);

    // Calculate the right and up vector
    this -> Right = glm::normalize(glm::cross(Front, Worldup));
    this -> Up    = glm::normalize(glm::cross(Right, Front));
}

glm::mat4 Camera::GetViewMatrix()
{
    return glm::lookAt(this -> Pos, this -> Pos + this -> Front, this -> Up);
}

void Camera::keyboard_input(Camera_movement direction, float dt)
{
    float velocity = this -> moveSpd * dt;
    if(direction == FORWARD){
        this -> Pos += this -> Front * velocity;
    }
    if (direction == BACKWARD){
        this -> Pos -= this -> Front * velocity;
    }
    if(direction == LEFT){
        this -> Pos -= this -> Right * velocity;
    }
    if(direction == RIGHT){
        this -> Pos += this -> Right * velocity;
    }
}

void Camera::mouse_input(float xoffset, float yoffset, GLboolean constrainPitch = true)
{
    xoffset *= this -> moveSns;
    yoffset *= this -> moveSns;

    this -> yaw += xoffset;
    this -> pitch += yoffset;

    if(constrainPitch){
        if(this -> pitch > 89.0f){
            this -> pitch = 89.0f;
        }
        if(this -> pitch < -89.0f){
            this -> pitch = -89.0f;
        }
    }
    this -> updateCameraVectors();
}

void Camera::mouse_scroll(float yoffset)
{
    this -> zoom -= (float)yoffset;
    if(this -> zoom < 0.1f){
        this -> zoom = 0.1f;
    }
    if(this -> zoom > 45.0f){
        this -> zoom = 45.0f;
    }
}