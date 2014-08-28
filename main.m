#include <Foundation/Foundation.h>
#include <Cocoa/Cocoa.h>
#include <AppKit/AppKit.h>

int main(int argc, const char * argv[])
{
    NSPoint oldLoc, mouseLoc;
    oldLoc = [NSEvent mouseLocation];

    while (1) {
        mouseLoc = [NSEvent mouseLocation];

        if (oldLoc.x != mouseLoc.x || oldLoc.y != mouseLoc.y) {
            return 0;
        }
        oldLoc = mouseLoc;
        usleep(250 * 1000); // takes in microseconds
    }
}
