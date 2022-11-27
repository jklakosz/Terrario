//File: main.cpp

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <iostream>

int main ()
{
    // start GL context and O/S window using the GLFW helper library
    if (!glfwInit ())
    {
        std::cerr<<"ERROR: could not start GLFW3"<<std::endl;
        return 1;
    }

    //Setting window properties
    glfwWindowHint (GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint (GLFW_CONTEXT_VERSION_MINOR, 6);
#ifdef __APPLE__
    glfwWindowHint (GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
    glfwWindowHint (GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    //Actually create the window
    GLFWwindow* window = glfwCreateWindow (640, 480, "OpenGL Initialization Example", NULL, NULL);
    if (!window)
    {
        std::cerr<<"ERROR: could not open window with GLFW3"<<std::endl;
        glfwTerminate();
        return 1;
    }
    glfwMakeContextCurrent (window);
    gladLoadGL();

    // get version info
    const GLubyte* renderer = glGetString (GL_RENDERER);
    const GLubyte* version = glGetString(GL_VERSION);
    std::cout<<"Renderer: "<<renderer<<std::endl;
    std::cout<<"OpenGL version supported "<<version<<std::endl;

    // close GL context and any other GLFW resources
    glfwTerminate();
    return 0;
}