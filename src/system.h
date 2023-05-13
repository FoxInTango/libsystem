#ifndef _SYSTEM_H_foxintango
#define _SYSTEM_H_foxintango

#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
class foxintangoAPI System {
public:
    class foxintangoAPI Kernel {
    public:
        const char* name();
        const char* version();
    };
private:
    int startup();
public:
    static System* instance();
public:
    const char* name();
    const char* version();
    const char* staticLibext();
    const char* dynamicLibext();
public:
    Kernel* kernel();
};
namespaceEnd
EXTERN_C_END
#endif
