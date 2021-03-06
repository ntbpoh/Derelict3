/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.sfml2.graphics;

public
{
    import derelict.sfml2.graphicstypes;
    import derelict.sfml2.graphicsfunctions;
}

private
{
    import derelict.util.loader;
    import derelict.util.system;

    static if(Derelict_OS_Windows)
        enum libNames = "csfml-graphics-2.dll";
    else static if(Derelict_OS_Mac)
        enum libNames = "libcsfml-graphics.2.dylib";
    else static if(Derelict_OS_Posix)
        enum libNames = "libcsfml-graphics.so.2";
    else
        static assert(0, "Need to implement SFML2 Graphics libNames for this operating system.");
}

class DerelictSFML2GraphicsLoader : SharedLibLoader
{
    protected
    {
        override void loadSymbols()
        {
            bindFunc(cast(void**)&sfCircleShape_create, "sfCircleShape_create");
            bindFunc(cast(void**)&sfCircleShape_copy, "sfCircleShape_copy");
            bindFunc(cast(void**)&sfCircleShape_destroy, "sfCircleShape_destroy");
            bindFunc(cast(void**)&sfCircleShape_setPosition, "sfCircleShape_setPosition");
            bindFunc(cast(void**)&sfCircleShape_setRotation, "sfCircleShape_setRotation");
            bindFunc(cast(void**)&sfCircleShape_setScale, "sfCircleShape_setScale");
            bindFunc(cast(void**)&sfCircleShape_setOrigin, "sfCircleShape_setOrigin");
            bindFunc(cast(void**)&sfCircleShape_getPosition, "sfCircleShape_getPosition");
            bindFunc(cast(void**)&sfCircleShape_getRotation, "sfCircleShape_getRotation");
            bindFunc(cast(void**)&sfCircleShape_getScale, "sfCircleShape_getScale");
            bindFunc(cast(void**)&sfCircleShape_getOrigin, "sfCircleShape_getOrigin");
            bindFunc(cast(void**)&sfCircleShape_move, "sfCircleShape_move");
            bindFunc(cast(void**)&sfCircleShape_rotate, "sfCircleShape_rotate");
            bindFunc(cast(void**)&sfCircleShape_scale, "sfCircleShape_scale");
            bindFunc(cast(void**)&sfCircleShape_getTransform, "sfCircleShape_getTransform");
            bindFunc(cast(void**)&sfCircleShape_getInverseTransform, "sfCircleShape_getInverseTransform");
            bindFunc(cast(void**)&sfCircleShape_setTexture, "sfCircleShape_setTexture");
            bindFunc(cast(void**)&sfCircleShape_setTextureRect, "sfCircleShape_setTextureRect");
            bindFunc(cast(void**)&sfCircleShape_setFillColor, "sfCircleShape_setFillColor");
            bindFunc(cast(void**)&sfCircleShape_setOutlineColor, "sfCircleShape_setOutlineColor");
            bindFunc(cast(void**)&sfCircleShape_setOutlineThickness, "sfCircleShape_setOutlineThickness");
            bindFunc(cast(void**)&sfCircleShape_getTexture, "sfCircleShape_getTexture");
            bindFunc(cast(void**)&sfCircleShape_getTextureRect, "sfCircleShape_getTextureRect");
            bindFunc(cast(void**)&sfCircleShape_getFillColor, "sfCircleShape_getFillColor");
            bindFunc(cast(void**)&sfCircleShape_getOutlineColor, "sfCircleShape_getOutlineColor");
            bindFunc(cast(void**)&sfCircleShape_getOutlineThickness, "sfCircleShape_getOutlineThickness");
            bindFunc(cast(void**)&sfCircleShape_getPointCount, "sfCircleShape_getPointCount");
            bindFunc(cast(void**)&sfCircleShape_getPoint, "sfCircleShape_getPoint");
            bindFunc(cast(void**)&sfCircleShape_setRadius, "sfCircleShape_setRadius");
            bindFunc(cast(void**)&sfCircleShape_getRadius, "sfCircleShape_getRadius");
            bindFunc(cast(void**)&sfCircleShape_setPointCount, "sfCircleShape_setPointCount");
            bindFunc(cast(void**)&sfCircleShape_getLocalBounds, "sfCircleShape_getLocalBounds");
            bindFunc(cast(void**)&sfCircleShape_getGlobalBounds, "sfCircleShape_getGlobalBounds");
            bindFunc(cast(void**)&sfColor_fromRGB, "sfColor_fromRGB");
            bindFunc(cast(void**)&sfColor_fromRGBA, "sfColor_fromRGBA");
            bindFunc(cast(void**)&sfColor_add, "sfColor_add");
            bindFunc(cast(void**)&sfColor_modulate, "sfColor_modulate");
            bindFunc(cast(void**)&sfConvexShape_create, "sfConvexShape_create");
            bindFunc(cast(void**)&sfConvexShape_copy, "sfConvexShape_copy");
            bindFunc(cast(void**)&sfConvexShape_destroy, "sfConvexShape_destroy");
            bindFunc(cast(void**)&sfConvexShape_setPosition, "sfConvexShape_setPosition");
            bindFunc(cast(void**)&sfConvexShape_setRotation, "sfConvexShape_setRotation");
            bindFunc(cast(void**)&sfConvexShape_setScale, "sfConvexShape_setScale");
            bindFunc(cast(void**)&sfConvexShape_setOrigin, "sfConvexShape_setOrigin");
            bindFunc(cast(void**)&sfConvexShape_getPosition, "sfConvexShape_getPosition");
            bindFunc(cast(void**)&sfConvexShape_getRotation, "sfConvexShape_getRotation");
            bindFunc(cast(void**)&sfConvexShape_getScale, "sfConvexShape_getScale");
            bindFunc(cast(void**)&sfConvexShape_getOrigin, "sfConvexShape_getOrigin");
            bindFunc(cast(void**)&sfConvexShape_move, "sfConvexShape_move");
            bindFunc(cast(void**)&sfConvexShape_rotate, "sfConvexShape_rotate");
            bindFunc(cast(void**)&sfConvexShape_scale, "sfConvexShape_scale");
            bindFunc(cast(void**)&sfConvexShape_getTransform, "sfConvexShape_getTransform");
            bindFunc(cast(void**)&sfConvexShape_getInverseTransform, "sfConvexShape_getInverseTransform");
            bindFunc(cast(void**)&sfConvexShape_setTexture, "sfConvexShape_setTexture");
            bindFunc(cast(void**)&sfConvexShape_setTextureRect, "sfConvexShape_setTextureRect");
            bindFunc(cast(void**)&sfConvexShape_setFillColor, "sfConvexShape_setFillColor");
            bindFunc(cast(void**)&sfConvexShape_setOutlineColor, "sfConvexShape_setOutlineColor");
            bindFunc(cast(void**)&sfConvexShape_setOutlineThickness, "sfConvexShape_setOutlineThickness");
            bindFunc(cast(void**)&sfConvexShape_getTexture, "sfConvexShape_getTexture");
            bindFunc(cast(void**)&sfConvexShape_getTextureRect, "sfConvexShape_getTextureRect");
            bindFunc(cast(void**)&sfConvexShape_getFillColor, "sfConvexShape_getFillColor");
            bindFunc(cast(void**)&sfConvexShape_getOutlineColor, "sfConvexShape_getOutlineColor");
            bindFunc(cast(void**)&sfConvexShape_getOutlineThickness, "sfConvexShape_getOutlineThickness");
            bindFunc(cast(void**)&sfConvexShape_getPointCount, "sfConvexShape_getPointCount");
            bindFunc(cast(void**)&sfConvexShape_getPoint, "sfConvexShape_getPoint");
            bindFunc(cast(void**)&sfConvexShape_setPointCount, "sfConvexShape_setPointCount");
            bindFunc(cast(void**)&sfConvexShape_setPoint, "sfConvexShape_setPoint");
            bindFunc(cast(void**)&sfConvexShape_getLocalBounds, "sfConvexShape_getLocalBounds");
            bindFunc(cast(void**)&sfConvexShape_getGlobalBounds, "sfConvexShape_getGlobalBounds");
            bindFunc(cast(void**)&sfFont_createFromFile, "sfFont_createFromFile");
            bindFunc(cast(void**)&sfFont_createFromMemory, "sfFont_createFromMemory");
            bindFunc(cast(void**)&sfFont_createFromStream, "sfFont_createFromStream");
            bindFunc(cast(void**)&sfFont_copy, "sfFont_copy");
            bindFunc(cast(void**)&sfFont_destroy, "sfFont_destroy");
            bindFunc(cast(void**)&sfFont_getGlyph, "sfFont_getGlyph");
            bindFunc(cast(void**)&sfFont_getKerning, "sfFont_getKerning");
            bindFunc(cast(void**)&sfFont_getLineSpacing, "sfFont_getLineSpacing");
            bindFunc(cast(void**)&sfFont_getTexture, "sfFont_getTexture");
            bindFunc(cast(void**)&sfImage_create, "sfImage_create");
            bindFunc(cast(void**)&sfImage_createFromColor, "sfImage_createFromColor");
            bindFunc(cast(void**)&sfImage_createFromPixels, "sfImage_createFromPixels");
            bindFunc(cast(void**)&sfImage_createFromFile, "sfImage_createFromFile");
            bindFunc(cast(void**)&sfImage_createFromMemory, "sfImage_createFromMemory");
            bindFunc(cast(void**)&sfImage_createFromStream, "sfImage_createFromStream");
            bindFunc(cast(void**)&sfImage_copy, "sfImage_copy");
            bindFunc(cast(void**)&sfImage_destroy, "sfImage_destroy");
            bindFunc(cast(void**)&sfImage_saveToFile, "sfImage_saveToFile");
            bindFunc(cast(void**)&sfImage_getSize, "sfImage_getSize");
            bindFunc(cast(void**)&sfImage_createMaskFromColor, "sfImage_createMaskFromColor");
            bindFunc(cast(void**)&sfImage_copyImage, "sfImage_copyImage");
            bindFunc(cast(void**)&sfImage_setPixel, "sfImage_setPixel");
            bindFunc(cast(void**)&sfImage_getPixel, "sfImage_getPixel");
            bindFunc(cast(void**)&sfImage_getPixelsPtr, "sfImage_getPixelsPtr");
            bindFunc(cast(void**)&sfImage_flipHorizontally, "sfImage_flipHorizontally");
            bindFunc(cast(void**)&sfImage_flipVertically, "sfImage_flipVertically");
            bindFunc(cast(void**)&sfFloatRect_contains, "sfFloatRect_contains");
            bindFunc(cast(void**)&sfIntRect_contains, "sfIntRect_contains");
            bindFunc(cast(void**)&sfFloatRect_intersects, "sfFloatRect_intersects");
            bindFunc(cast(void**)&sfIntRect_intersects, "sfIntRect_intersects");
            bindFunc(cast(void**)&sfRectangleShape_create, "sfRectangleShape_create");
            bindFunc(cast(void**)&sfRectangleShape_copy, "sfRectangleShape_copy");
            bindFunc(cast(void**)&sfRectangleShape_destroy, "sfRectangleShape_destroy");
            bindFunc(cast(void**)&sfRectangleShape_setPosition, "sfRectangleShape_setPosition");
            bindFunc(cast(void**)&sfRectangleShape_setRotation, "sfRectangleShape_setRotation");
            bindFunc(cast(void**)&sfRectangleShape_setScale, "sfRectangleShape_setScale");
            bindFunc(cast(void**)&sfRectangleShape_setOrigin, "sfRectangleShape_setOrigin");
            bindFunc(cast(void**)&sfRectangleShape_getPosition, "sfRectangleShape_getPosition");
            bindFunc(cast(void**)&sfRectangleShape_getRotation, "sfRectangleShape_getRotation");
            bindFunc(cast(void**)&sfRectangleShape_getScale, "sfRectangleShape_getScale");
            bindFunc(cast(void**)&sfRectangleShape_getOrigin, "sfRectangleShape_getOrigin");
            bindFunc(cast(void**)&sfRectangleShape_move, "sfRectangleShape_move");
            bindFunc(cast(void**)&sfRectangleShape_rotate, "sfRectangleShape_rotate");
            bindFunc(cast(void**)&sfRectangleShape_scale, "sfRectangleShape_scale");
            bindFunc(cast(void**)&sfRectangleShape_getTransform, "sfRectangleShape_getTransform");
            bindFunc(cast(void**)&sfRectangleShape_getInverseTransform, "sfRectangleShape_getInverseTransform");
            bindFunc(cast(void**)&sfRectangleShape_setTexture, "sfRectangleShape_setTexture");
            bindFunc(cast(void**)&sfRectangleShape_setTextureRect, "sfRectangleShape_setTextureRect");
            bindFunc(cast(void**)&sfRectangleShape_setFillColor, "sfRectangleShape_setFillColor");
            bindFunc(cast(void**)&sfRectangleShape_setOutlineColor, "sfRectangleShape_setOutlineColor");
            bindFunc(cast(void**)&sfRectangleShape_setOutlineThickness, "sfRectangleShape_setOutlineThickness");
            bindFunc(cast(void**)&sfRectangleShape_getTexture, "sfRectangleShape_getTexture");
            bindFunc(cast(void**)&sfRectangleShape_getTextureRect, "sfRectangleShape_getTextureRect");
            bindFunc(cast(void**)&sfRectangleShape_getFillColor, "sfRectangleShape_getFillColor");
            bindFunc(cast(void**)&sfRectangleShape_getOutlineColor, "sfRectangleShape_getOutlineColor");
            bindFunc(cast(void**)&sfRectangleShape_getOutlineThickness, "sfRectangleShape_getOutlineThickness");
            bindFunc(cast(void**)&sfRectangleShape_getPointCount, "sfRectangleShape_getPointCount");
            bindFunc(cast(void**)&sfRectangleShape_getPoint, "sfRectangleShape_getPoint");
            bindFunc(cast(void**)&sfRectangleShape_setSize, "sfRectangleShape_setSize");
            bindFunc(cast(void**)&sfRectangleShape_getSize, "sfRectangleShape_getSize");
            bindFunc(cast(void**)&sfRectangleShape_getLocalBounds, "sfRectangleShape_getLocalBounds");
            bindFunc(cast(void**)&sfRectangleShape_getGlobalBounds, "sfRectangleShape_getGlobalBounds");
            bindFunc(cast(void**)&sfRenderTexture_create, "sfRenderTexture_create");
            bindFunc(cast(void**)&sfRenderTexture_destroy, "sfRenderTexture_destroy");
            bindFunc(cast(void**)&sfRenderTexture_getSize, "sfRenderTexture_getSize");
            bindFunc(cast(void**)&sfRenderTexture_setActive, "sfRenderTexture_setActive");
            bindFunc(cast(void**)&sfRenderTexture_display, "sfRenderTexture_display");
            bindFunc(cast(void**)&sfRenderTexture_clear, "sfRenderTexture_clear");
            bindFunc(cast(void**)&sfRenderTexture_setView, "sfRenderTexture_setView");
            bindFunc(cast(void**)&sfRenderTexture_getView, "sfRenderTexture_getView");
            bindFunc(cast(void**)&sfRenderTexture_getDefaultView, "sfRenderTexture_getDefaultView");
            bindFunc(cast(void**)&sfRenderTexture_getViewport, "sfRenderTexture_getViewport");
            bindFunc(cast(void**)&sfRenderTexture_convertCoords, "sfRenderTexture_convertCoords");
            bindFunc(cast(void**)&sfRenderTexture_drawSprite, "sfRenderTexture_drawSprite");
            bindFunc(cast(void**)&sfRenderTexture_drawText, "sfRenderTexture_drawText");
            bindFunc(cast(void**)&sfRenderTexture_drawShape, "sfRenderTexture_drawShape");
            bindFunc(cast(void**)&sfRenderTexture_drawCircleShape, "sfRenderTexture_drawCircleShape");
            bindFunc(cast(void**)&sfRenderTexture_drawConvexShape, "sfRenderTexture_drawConvexShape");
            bindFunc(cast(void**)&sfRenderTexture_drawRectangleShape, "sfRenderTexture_drawRectangleShape");
            bindFunc(cast(void**)&sfRenderTexture_drawVertexArray, "sfRenderTexture_drawVertexArray");
            bindFunc(cast(void**)&sfRenderTexture_drawPrimitives, "sfRenderTexture_drawPrimitives");
            bindFunc(cast(void**)&sfRenderTexture_pushGLStates, "sfRenderTexture_pushGLStates");
            bindFunc(cast(void**)&sfRenderTexture_popGLStates, "sfRenderTexture_popGLStates");
            bindFunc(cast(void**)&sfRenderTexture_resetGLStates, "sfRenderTexture_resetGLStates");
            bindFunc(cast(void**)&sfRenderTexture_getTexture, "sfRenderTexture_getTexture");
            bindFunc(cast(void**)&sfRenderTexture_setSmooth, "sfRenderTexture_setSmooth");
            bindFunc(cast(void**)&sfRenderTexture_isSmooth, "sfRenderTexture_isSmooth");
            bindFunc(cast(void**)&sfRenderWindow_create, "sfRenderWindow_create");
            bindFunc(cast(void**)&sfRenderWindow_createFromHandle, "sfRenderWindow_createFromHandle");
            bindFunc(cast(void**)&sfRenderWindow_destroy, "sfRenderWindow_destroy");
            bindFunc(cast(void**)&sfRenderWindow_close, "sfRenderWindow_close");
            bindFunc(cast(void**)&sfRenderWindow_isOpen, "sfRenderWindow_isOpen");
            bindFunc(cast(void**)&sfRenderWindow_getSettings, "sfRenderWindow_getSettings");
            bindFunc(cast(void**)&sfRenderWindow_pollEvent, "sfRenderWindow_pollEvent");
            bindFunc(cast(void**)&sfRenderWindow_waitEvent, "sfRenderWindow_waitEvent");
            bindFunc(cast(void**)&sfRenderWindow_getPosition, "sfRenderWindow_getPosition");
            bindFunc(cast(void**)&sfRenderWindow_setPosition, "sfRenderWindow_setPosition");
            bindFunc(cast(void**)&sfRenderWindow_getSize, "sfRenderWindow_getSize");
            bindFunc(cast(void**)&sfRenderWindow_setSize, "sfRenderWindow_setSize");
            bindFunc(cast(void**)&sfRenderWindow_setTitle, "sfRenderWindow_setTitle");
            bindFunc(cast(void**)&sfRenderWindow_setIcon, "sfRenderWindow_setIcon");
            bindFunc(cast(void**)&sfRenderWindow_setVisible, "sfRenderWindow_setVisible");
            bindFunc(cast(void**)&sfRenderWindow_setMouseCursorVisible, "sfRenderWindow_setMouseCursorVisible");
            bindFunc(cast(void**)&sfRenderWindow_setVerticalSyncEnabled, "sfRenderWindow_setVerticalSyncEnabled");
            bindFunc(cast(void**)&sfRenderWindow_setKeyRepeatEnabled, "sfRenderWindow_setKeyRepeatEnabled");
            bindFunc(cast(void**)&sfRenderWindow_setActive, "sfRenderWindow_setActive");
            bindFunc(cast(void**)&sfRenderWindow_display, "sfRenderWindow_display");
            bindFunc(cast(void**)&sfRenderWindow_setFramerateLimit, "sfRenderWindow_setFramerateLimit");
            bindFunc(cast(void**)&sfRenderWindow_setJoystickThreshold, "sfRenderWindow_setJoystickThreshold");
            bindFunc(cast(void**)&sfRenderWindow_getSystemHandle, "sfRenderWindow_getSystemHandle");
            bindFunc(cast(void**)&sfRenderWindow_clear, "sfRenderWindow_clear");
            bindFunc(cast(void**)&sfRenderWindow_setView, "sfRenderWindow_setView");
            bindFunc(cast(void**)&sfRenderWindow_getView, "sfRenderWindow_getView");
            bindFunc(cast(void**)&sfRenderWindow_getDefaultView, "sfRenderWindow_getDefaultView");
            bindFunc(cast(void**)&sfRenderWindow_getViewport, "sfRenderWindow_getViewport");
            bindFunc(cast(void**)&sfRenderWindow_convertCoords, "sfRenderWindow_convertCoords");
            bindFunc(cast(void**)&sfRenderWindow_drawSprite, "sfRenderWindow_drawSprite");
            bindFunc(cast(void**)&sfRenderWindow_drawText, "sfRenderWindow_drawText");
            bindFunc(cast(void**)&sfRenderWindow_drawShape, "sfRenderWindow_drawShape");
            bindFunc(cast(void**)&sfRenderWindow_drawCircleShape, "sfRenderWindow_drawCircleShape");
            bindFunc(cast(void**)&sfRenderWindow_drawConvexShape, "sfRenderWindow_drawConvexShape");
            bindFunc(cast(void**)&sfRenderWindow_drawRectangleShape, "sfRenderWindow_drawRectangleShape");
            bindFunc(cast(void**)&sfRenderWindow_drawVertexArray, "sfRenderWindow_drawVertexArray");
            bindFunc(cast(void**)&sfRenderWindow_drawPrimitives, "sfRenderWindow_drawPrimitives");
            bindFunc(cast(void**)&sfRenderWindow_pushGLStates, "sfRenderWindow_pushGLStates");
            bindFunc(cast(void**)&sfRenderWindow_popGLStates, "sfRenderWindow_popGLStates");
            bindFunc(cast(void**)&sfRenderWindow_resetGLStates, "sfRenderWindow_resetGLStates");
            bindFunc(cast(void**)&sfRenderWindow_capture, "sfRenderWindow_capture");
            bindFunc(cast(void**)&sfShader_createFromFile, "sfShader_createFromFile");
            bindFunc(cast(void**)&sfShader_createFromMemory, "sfShader_createFromMemory");
            bindFunc(cast(void**)&sfShader_createFromStream, "sfShader_createFromStream");
            bindFunc(cast(void**)&sfShader_destroy, "sfShader_destroy");
            bindFunc(cast(void**)&sfShader_setFloatParameter, "sfShader_setFloatParameter");
            bindFunc(cast(void**)&sfShader_setFloat2Parameter, "sfShader_setFloat2Parameter");
            bindFunc(cast(void**)&sfShader_setFloat3Parameter, "sfShader_setFloat3Parameter");
            bindFunc(cast(void**)&sfShader_setFloat4Parameter, "sfShader_setFloat4Parameter");
            bindFunc(cast(void**)&sfShader_setVector2Parameter, "sfShader_setVector2Parameter");
            bindFunc(cast(void**)&sfShader_setVector3Parameter, "sfShader_setVector3Parameter");
            bindFunc(cast(void**)&sfShader_setColorParameter, "sfShader_setColorParameter");
            bindFunc(cast(void**)&sfShader_setTransformParameter, "sfShader_setTransformParameter");
            bindFunc(cast(void**)&sfShader_setTextureParameter, "sfShader_setTextureParameter");
            bindFunc(cast(void**)&sfShader_setCurrentTextureParameter, "sfShader_setCurrentTextureParameter");
            bindFunc(cast(void**)&sfShader_bind, "sfShader_bind");
            bindFunc(cast(void**)&sfShader_isAvailable, "sfShader_isAvailable");
            bindFunc(cast(void**)&sfShape_create, "sfShape_create");
            bindFunc(cast(void**)&sfShape_destroy, "sfShape_destroy");
            bindFunc(cast(void**)&sfShape_setPosition, "sfShape_setPosition");
            bindFunc(cast(void**)&sfShape_setRotation, "sfShape_setRotation");
            bindFunc(cast(void**)&sfShape_setScale, "sfShape_setScale");
            bindFunc(cast(void**)&sfShape_setOrigin, "sfShape_setOrigin");
            bindFunc(cast(void**)&sfShape_getPosition, "sfShape_getPosition");
            bindFunc(cast(void**)&sfShape_getRotation, "sfShape_getRotation");
            bindFunc(cast(void**)&sfShape_getScale, "sfShape_getScale");
            bindFunc(cast(void**)&sfShape_getOrigin, "sfShape_getOrigin");
            bindFunc(cast(void**)&sfShape_move, "sfShape_move");
            bindFunc(cast(void**)&sfShape_rotate, "sfShape_rotate");
            bindFunc(cast(void**)&sfShape_scale, "sfShape_scale");
            bindFunc(cast(void**)&sfShape_getTransform, "sfShape_getTransform");
            bindFunc(cast(void**)&sfShape_getInverseTransform, "sfShape_getInverseTransform");
            bindFunc(cast(void**)&sfShape_setTexture, "sfShape_setTexture");
            bindFunc(cast(void**)&sfShape_setTextureRect, "sfShape_setTextureRect");
            bindFunc(cast(void**)&sfShape_setFillColor, "sfShape_setFillColor");
            bindFunc(cast(void**)&sfShape_setOutlineColor, "sfShape_setOutlineColor");
            bindFunc(cast(void**)&sfShape_setOutlineThickness, "sfShape_setOutlineThickness");
            bindFunc(cast(void**)&sfShape_getTexture, "sfShape_getTexture");
            bindFunc(cast(void**)&sfShape_getTextureRect, "sfShape_getTextureRect");
            bindFunc(cast(void**)&sfShape_getFillColor, "sfShape_getFillColor");
            bindFunc(cast(void**)&sfShape_getOutlineColor, "sfShape_getOutlineColor");
            bindFunc(cast(void**)&sfShape_getOutlineThickness, "sfShape_getOutlineThickness");
            bindFunc(cast(void**)&sfShape_getPointCount, "sfShape_getPointCount");
            bindFunc(cast(void**)&sfShape_getPoint, "sfShape_getPoint");
            bindFunc(cast(void**)&sfShape_getLocalBounds, "sfShape_getLocalBounds");
            bindFunc(cast(void**)&sfShape_getGlobalBounds, "sfShape_getGlobalBounds");
            bindFunc(cast(void**)&sfShape_update, "sfShape_update");
            bindFunc(cast(void**)&sfSprite_create, "sfSprite_create");
            bindFunc(cast(void**)&sfSprite_copy, "sfSprite_copy");
            bindFunc(cast(void**)&sfSprite_destroy, "sfSprite_destroy");
            bindFunc(cast(void**)&sfSprite_setPosition, "sfSprite_setPosition");
            bindFunc(cast(void**)&sfSprite_setRotation, "sfSprite_setRotation");
            bindFunc(cast(void**)&sfSprite_setScale, "sfSprite_setScale");
            bindFunc(cast(void**)&sfSprite_setOrigin, "sfSprite_setOrigin");
            bindFunc(cast(void**)&sfSprite_getPosition, "sfSprite_getPosition");
            bindFunc(cast(void**)&sfSprite_getRotation, "sfSprite_getRotation");
            bindFunc(cast(void**)&sfSprite_getScale, "sfSprite_getScale");
            bindFunc(cast(void**)&sfSprite_getOrigin, "sfSprite_getOrigin");
            bindFunc(cast(void**)&sfSprite_move, "sfSprite_move");
            bindFunc(cast(void**)&sfSprite_rotate, "sfSprite_rotate");
            bindFunc(cast(void**)&sfSprite_scale, "sfSprite_scale");
            bindFunc(cast(void**)&sfSprite_getTransform, "sfSprite_getTransform");
            bindFunc(cast(void**)&sfSprite_getInverseTransform, "sfSprite_getInverseTransform");
            bindFunc(cast(void**)&sfSprite_setTexture, "sfSprite_setTexture");
            bindFunc(cast(void**)&sfSprite_setTextureRect, "sfSprite_setTextureRect");
            bindFunc(cast(void**)&sfSprite_setColor, "sfSprite_setColor");
            bindFunc(cast(void**)&sfSprite_getTexture, "sfSprite_getTexture");
            bindFunc(cast(void**)&sfSprite_getTextureRect, "sfSprite_getTextureRect");
            bindFunc(cast(void**)&sfSprite_getColor, "sfSprite_getColor");
            bindFunc(cast(void**)&sfSprite_getLocalBounds, "sfSprite_getLocalBounds");
            bindFunc(cast(void**)&sfSprite_getGlobalBounds, "sfSprite_getGlobalBounds");
            bindFunc(cast(void**)&sfText_create, "sfText_create");
            bindFunc(cast(void**)&sfText_copy, "sfText_copy");
            bindFunc(cast(void**)&sfText_destroy, "sfText_destroy");
            bindFunc(cast(void**)&sfText_setPosition, "sfText_setPosition");
            bindFunc(cast(void**)&sfText_setRotation, "sfText_setRotation");
            bindFunc(cast(void**)&sfText_setScale, "sfText_setScale");
            bindFunc(cast(void**)&sfText_setOrigin, "sfText_setOrigin");
            bindFunc(cast(void**)&sfText_getPosition, "sfText_getPosition");
            bindFunc(cast(void**)&sfText_getRotation, "sfText_getRotation");
            bindFunc(cast(void**)&sfText_getScale, "sfText_getScale");
            bindFunc(cast(void**)&sfText_getOrigin, "sfText_getOrigin");
            bindFunc(cast(void**)&sfText_move, "sfText_move");
            bindFunc(cast(void**)&sfText_rotate, "sfText_rotate");
            bindFunc(cast(void**)&sfText_scale, "sfText_scale");
            bindFunc(cast(void**)&sfText_getTransform, "sfText_getTransform");
            bindFunc(cast(void**)&sfText_getInverseTransform, "sfText_getInverseTransform");
            bindFunc(cast(void**)&sfText_setString, "sfText_setString");
            bindFunc(cast(void**)&sfText_setUnicodeString, "sfText_setUnicodeString");
            bindFunc(cast(void**)&sfText_setFont, "sfText_setFont");
            bindFunc(cast(void**)&sfText_setCharacterSize, "sfText_setCharacterSize");
            bindFunc(cast(void**)&sfText_setStyle, "sfText_setStyle");
            bindFunc(cast(void**)&sfText_setColor, "sfText_setColor");
            bindFunc(cast(void**)&sfText_getString, "sfText_getString");
            bindFunc(cast(void**)&sfText_getUnicodeString, "sfText_getUnicodeString");
            bindFunc(cast(void**)&sfText_getFont, "sfText_getFont");
            bindFunc(cast(void**)&sfText_getCharacterSize, "sfText_getCharacterSize");
            bindFunc(cast(void**)&sfText_getStyle, "sfText_getStyle");
            bindFunc(cast(void**)&sfText_getColor, "sfText_getColor");
            bindFunc(cast(void**)&sfText_findCharacterPos, "sfText_findCharacterPos");
            bindFunc(cast(void**)&sfText_getLocalBounds, "sfText_getLocalBounds");
            bindFunc(cast(void**)&sfText_getGlobalBounds, "sfText_getGlobalBounds");
            bindFunc(cast(void**)&sfTexture_create, "sfTexture_create");
            bindFunc(cast(void**)&sfTexture_createFromFile, "sfTexture_createFromFile");
            bindFunc(cast(void**)&sfTexture_createFromMemory, "sfTexture_createFromMemory");
            bindFunc(cast(void**)&sfTexture_createFromStream, "sfTexture_createFromStream");
            bindFunc(cast(void**)&sfTexture_createFromImage, "sfTexture_createFromImage");
            bindFunc(cast(void**)&sfTexture_copy, "sfTexture_copy");
            bindFunc(cast(void**)&sfTexture_destroy, "sfTexture_destroy");
            bindFunc(cast(void**)&sfTexture_getSize, "sfTexture_getSize");
            bindFunc(cast(void**)&sfTexture_copyToImage, "sfTexture_copyToImage");
            bindFunc(cast(void**)&sfTexture_updateFromPixels, "sfTexture_updateFromPixels");
            bindFunc(cast(void**)&sfTexture_updateFromImage, "sfTexture_updateFromImage");
            bindFunc(cast(void**)&sfTexture_updateFromWindow, "sfTexture_updateFromWindow");
            bindFunc(cast(void**)&sfTexture_updateFromRenderWindow, "sfTexture_updateFromRenderWindow");
            bindFunc(cast(void**)&sfTexture_bind, "sfTexture_bind");
            bindFunc(cast(void**)&sfTexture_setSmooth, "sfTexture_setSmooth");
            bindFunc(cast(void**)&sfTexture_isSmooth, "sfTexture_isSmooth");
            bindFunc(cast(void**)&sfTexture_setRepeated, "sfTexture_setRepeated");
            bindFunc(cast(void**)&sfTexture_isRepeated, "sfTexture_isRepeated");
            bindFunc(cast(void**)&sfTexture_getMaximumSize, "sfTexture_getMaximumSize");
            bindFunc(cast(void**)&sfTransform_fromMatrix, "sfTransform_fromMatrix");
            bindFunc(cast(void**)&sfTransform_getMatrix, "sfTransform_getMatrix");
            bindFunc(cast(void**)&sfTransform_getInverse, "sfTransform_getInverse");
            bindFunc(cast(void**)&sfTransform_transformPoint, "sfTransform_transformPoint");
            bindFunc(cast(void**)&sfTransform_transformRect, "sfTransform_transformRect");
            bindFunc(cast(void**)&sfTransform_combine, "sfTransform_combine");
            bindFunc(cast(void**)&sfTransform_translate, "sfTransform_translate");
            bindFunc(cast(void**)&sfTransform_rotate, "sfTransform_rotate");
            bindFunc(cast(void**)&sfTransform_rotateWithCenter, "sfTransform_rotateWithCenter");
            bindFunc(cast(void**)&sfTransform_scale, "sfTransform_scale");
            bindFunc(cast(void**)&sfTransform_scaleWithCenter, "sfTransform_scaleWithCenter");
            bindFunc(cast(void**)&sfTransformable_create, "sfTransformable_create");
            bindFunc(cast(void**)&sfTransformable_copy, "sfTransformable_copy");
            bindFunc(cast(void**)&sfTransformable_destroy, "sfTransformable_destroy");
            bindFunc(cast(void**)&sfTransformable_setPosition, "sfTransformable_setPosition");
            bindFunc(cast(void**)&sfTransformable_setRotation, "sfTransformable_setRotation");
            bindFunc(cast(void**)&sfTransformable_setScale, "sfTransformable_setScale");
            bindFunc(cast(void**)&sfTransformable_setOrigin, "sfTransformable_setOrigin");
            bindFunc(cast(void**)&sfTransformable_getPosition, "sfTransformable_getPosition");
            bindFunc(cast(void**)&sfTransformable_getRotation, "sfTransformable_getRotation");
            bindFunc(cast(void**)&sfTransformable_getScale, "sfTransformable_getScale");
            bindFunc(cast(void**)&sfTransformable_getOrigin, "sfTransformable_getOrigin");
            bindFunc(cast(void**)&sfTransformable_move, "sfTransformable_move");
            bindFunc(cast(void**)&sfTransformable_rotate, "sfTransformable_rotate");
            bindFunc(cast(void**)&sfTransformable_scale, "sfTransformable_scale");
            bindFunc(cast(void**)&sfTransformable_getTransform, "sfTransformable_getTransform");
            bindFunc(cast(void**)&sfTransformable_getInverseTransform, "sfTransformable_getInverseTransform");
            bindFunc(cast(void**)&sfVertexArray_create, "sfVertexArray_create");
            bindFunc(cast(void**)&sfVertexArray_copy, "sfVertexArray_copy");
            bindFunc(cast(void**)&sfVertexArray_destroy, "sfVertexArray_destroy");
            bindFunc(cast(void**)&sfVertexArray_getVertexCount, "sfVertexArray_getVertexCount");
            bindFunc(cast(void**)&sfVertexArray_getVertex, "sfVertexArray_getVertex");
            bindFunc(cast(void**)&sfVertexArray_clear, "sfVertexArray_clear");
            bindFunc(cast(void**)&sfVertexArray_resize, "sfVertexArray_resize");
            bindFunc(cast(void**)&sfVertexArray_append, "sfVertexArray_append");
            bindFunc(cast(void**)&sfVertexArray_setPrimitiveType, "sfVertexArray_setPrimitiveType");
            bindFunc(cast(void**)&sfVertexArray_getPrimitiveType, "sfVertexArray_getPrimitiveType");
            bindFunc(cast(void**)&sfVertexArray_getBounds, "sfVertexArray_getBounds");
            bindFunc(cast(void**)&sfView_create, "sfView_create");
            bindFunc(cast(void**)&sfView_createFromRect, "sfView_createFromRect");
            bindFunc(cast(void**)&sfView_copy, "sfView_copy");
            bindFunc(cast(void**)&sfView_destroy, "sfView_destroy");
            bindFunc(cast(void**)&sfView_setCenter, "sfView_setCenter");
            bindFunc(cast(void**)&sfView_setSize, "sfView_setSize");
            bindFunc(cast(void**)&sfView_setRotation, "sfView_setRotation");
            bindFunc(cast(void**)&sfView_setViewport, "sfView_setViewport");
            bindFunc(cast(void**)&sfView_reset, "sfView_reset");
            bindFunc(cast(void**)&sfView_getCenter, "sfView_getCenter");
            bindFunc(cast(void**)&sfView_getSize, "sfView_getSize");
            bindFunc(cast(void**)&sfView_getRotation, "sfView_getRotation");
            bindFunc(cast(void**)&sfView_getViewport, "sfView_getViewport");
            bindFunc(cast(void**)&sfView_move, "sfView_move");
            bindFunc(cast(void**)&sfView_rotate, "sfView_rotate");
            bindFunc(cast(void**)&sfView_zoom, "sfView_zoom");
        }
    }

    public
    {
        this()
        {
            super(libNames);
        }
    }
}

__gshared DerelictSFML2GraphicsLoader DerelictSFML2Graphics;

shared static this()
{
    DerelictSFML2Graphics = new DerelictSFML2GraphicsLoader();
}

shared static ~this()
{
    DerelictSFML2Graphics.unload();
}