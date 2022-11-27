#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <iostream>

int main ()
{
    if (!glfwInit ())
    {
        std::cerr<<"ERROR: could not start GLFW3"<<std::endl;
        return 1;
    }

    glfwWindowHint (GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint (GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint (GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint (GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow (640, 480, "OpenGL Initialization Example", NULL, NULL);
    if (!window)
    {
        std::cerr<<"ERROR: could not open window with GLFW3"<<std::endl;
        glfwTerminate();
        return 1;
    }
    glfwMakeContextCurrent (window);
    gladLoadGL();

    const GLubyte* renderer = glGetString (GL_RENDERER);
    const GLubyte* version = glGetString(GL_VERSION);
    std::cout<<"Renderer: "<<renderer<<std::endl;
    std::cout<<"OpenGL version supported "<<version<<std::endl;

#ifdef __APPLE__
    std::cout<<"Apple system"<<std::endl;
#endif

    return 0;
}