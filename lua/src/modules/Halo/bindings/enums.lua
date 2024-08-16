enum = {

    -- GLFW enums below
    GLFW_CONTEXT_VERSION_MAJOR = 0x00022002,
    
    GLFW_CONTEXT_VERSION_MINOR = 0x00022003,
    
    GLFW_OPENGL_PROFILE = 0x00022008,
    
    GLFW_OPENGL_CORE_PROFILE = 0x00032001,

    GLFW_TRANSPARENT_FRAMEBUFFER = 0x0002000A,

    -- GLFW key enums.
    
    -- Key state.
    
    GLFW_PRESS = 1,
    
    -- Non alphabet keys.
    GLFW_KEY_ESCAPE = 256,
    
    GLFW_KEY_ENTER = 257,
    
    GLFW_KEY_TAB = 258,
    
    GLFW_KEY_BACKSPACE = 259,
    
    GLFW_KEY_INSERT = 260,
    
    GLFW_KEY_DELETE = 261,
    
    GLFW_KEY_RIGHT = 262,
    
    GLFW_KEY_LEFT = 263,
    
    GLFW_KEY_DOWN = 264,
    
    GLFW_KEY_UP = 265,
    
    GLFW_KEY_PAGE_UP = 266,
    
    GLFW_KEY_PAGE_DOWN = 267,
    
    GLFW_KEY_HOME = 268,
    
    GLFW_KEY_END = 269,
    
    GLFW_KEY_CAPS_LOCK = 280,
    
    GLFW_KEY_SCROLL_LOCK = 281,
    
    GLFW_KEY_NUM_LOCK = 282,
    
    GLFW_KEY_PRINT_SCREEN = 283,
    
    GLFW_KEY_PAUSE = 284,
    
    GLFW_KEY_F1 = 290,
    
    GLFW_KEY_F2 = 291,
    
    GLFW_KEY_F3 = 292,
    
    GLFW_KEY_F4 = 293,
    
    GLFW_KEY_F5 = 294,
    
    GLFW_KEY_F6 = 295,
    
    GLFW_KEY_F7 = 296,
    
    GLFW_KEY_F8 = 297,
    
    GLFW_KEY_F9 = 298,
    
    GLFW_KEY_F10 = 299,
    
    GLFW_KEY_F11 = 300,
    
    GLFW_KEY_F12 = 301,
    
    GLFW_KEY_F13 = 302,
    
    GLFW_KEY_F14 = 303,
    
    GLFW_KEY_F15 = 304,
    
    GLFW_KEY_F16 = 305,
    
    GLFW_KEY_F17 = 306,
    
    GLFW_KEY_F18 = 307,
    
    GLFW_KEY_F19 = 308,
    
    GLFW_KEY_F20 = 309,
    
    GLFW_KEY_F21 = 310,
    
    GLFW_KEY_F22 = 311,
    
    GLFW_KEY_F23 = 312,
    
    GLFW_KEY_F24 = 313,
    
    GLFW_KEY_F25 = 314,
    
    GLFW_KEY_KP_0 = 320,
    
    GLFW_KEY_KP_1 = 321,
    
    GLFW_KEY_KP_2 = 322,

    GLFW_KEY_KP_3 = 323,
    
    GLFW_KEY_KP_4 = 324,
    
    GLFW_KEY_KP_5 = 325,
    
    GLFW_KEY_KP_6 = 326,
    
    GLFW_KEY_KP_7 = 327,
    
    GLFW_KEY_KP_8 = 328,
    
    GLFW_KEY_KP_9 = 329,
    
    GLFW_KEY_KP_DECIMAL = 330,
    
    GLFW_KEY_KP_DIVIDE = 331,
    
    GLFW_KEY_KP_MULTIPLY = 332,
    
    GLFW_KEY_KP_SUBTRACT = 333,
    
    GLFW_KEY_KP_ADD = 334,
    
    GLFW_KEY_KP_ENTER = 335,
    
    GLFW_KEY_KP_EQUAL = 336,
    
    GLFW_KEY_LEFT_SHIFT = 340,
    
    GLFW_KEY_LEFT_CONTROL = 341,
    
    GLFW_KEY_LEFT_ALT = 342,
    
    GLFW_KEY_LEFT_SUPER = 343,
    
    GLFW_KEY_RIGHT_SHIFT = 344,
    
    GLFW_KEY_RIGHT_CONTROL = 345,
    
    GLFW_KEY_RIGHT_ALT = 346,
    
    GLFW_KEY_RIGHT_SUPER = 347,
    
    GLFW_KEY_MENU = 348,


    
    -- GL enums below
    
    GL_DEPTH_BUFFER_BIT = 0x00000100,          
    
    GL_STENCIL_BUFFER_BIT = 0x00000400,
    
    GL_COLOR_BUFFER_BIT = 0x00004000,
    
    GL_FALSE = 0,
    
    GL_TRUE = 1,
    
    GL_POINTS = 0x0000,
    
    GL_LINES = 0x0001,
    
    GL_LINE_LOOP = 0x0002,
    
    GL_LINE_STRIP = 0x0003,
    
    GL_TRIANGLES = 0x0004,
    
    GL_TRIANGLE_STRIP = 0x0005,
    
    GL_TRIANGLE_FAN = 0x0006,
    
    GL_QUADS = 0x0007,
    
    GL_NEVER = 0x0200,
    
    GL_LESS = 0x0201,
    
    GL_EQUAL = 0x0202,
    
    GL_LEQUAL = 0x0203,
    
    GL_GREATER = 0x0204,
    
    GL_NOTEQUAL = 0x0205,
    
    GL_GEQUAL = 0x0206,
    
    GL_ALWAYS = 0x0207,
    
    GL_ZERO = 0,
    
    GL_ONE = 1,
    
    GL_SRC_COLOR = 0x0300,
    
    GL_ONE_MINUS_SRC_COLOR = 0x0301,
    
    GL_SRC_ALPHA = 0x0302,
    
    GL_ONE_MINUS_SRC_ALPHA = 0x0303,
    
    GL_DST_ALPHA = 0x0304,
    
    GL_ONE_MINUS_DST_ALPHA = 0x0305,
    
    GL_DST_COLOR = 0x0306,
    
    GL_ONE_MINUS_DST_COLOR = 0x0307,
    
    GL_SRC_ALPHA_SATURATE = 0x0308,
    
    GL_NONE = 0,
    
    GL_FRONT_LEFT = 0x0400,
    
    GL_FRONT_RIGHT = 0x0401,
    
    GL_BACK_LEFT = 0x0402,
    
    GL_BACK_RIGHT = 0x0403,
    
    GL_FRONT = 0x0404,
    
    GL_BACK = 0x0405,
    
    GL_LEFT = 0x0406,
    
    GL_RIGHT = 0x0407,
    
    GL_FRONT_AND_BACK = 0x0408,
    
    GL_NO_ERROR = 0,
    
    GL_INVALID_ENUM = 0x0500,
    
    GL_INVALID_VALUE = 0x0501,
    
    GL_INVALID_OPERATION = 0x0502,
    
    GL_OUT_OF_MEMORY = 0x0505,
    
    GL_CW = 0x0900,
    
    GL_CCW = 0x0901,
    
    GL_POINT_SIZE = 0x0B11,
    
    GL_POINT_SIZE_RANGE = 0x0B12,
    
    GL_POINT_SIZE_GRANULARITY = 0x0B13,
    
    GL_LINE_SMOOTH = 0x0B20,
    
    GL_LINE_WIDTH = 0x0B21,
    
    GL_LINE_WIDTH_RANGE = 0x0B22,
    
    GL_LINE_WIDTH_GRANULARITY = 0x0B23,
    
    GL_POLYGON_MODE = 0x0B40,
    
    GL_POLYGON_SMOOTH = 0x0B41,
    
    GL_CULL_FACE = 0x0B44,
    
    GL_CULL_FACE_MODE = 0x0B45,
    
    GL_FRONT_FACE = 0x0B46,
    
    GL_DEPTH_RANGE = 0x0B70,
    
    GL_DEPTH_TEST = 0x0B71,
    
    GL_DEPTH_WRITEMASK = 0x0B72,
    
    GL_DEPTH_CLEAR_VALUE = 0x0B73,
    
    GL_DEPTH_FUNC = 0x0B74,
    
    GL_STENCIL_TEST = 0x0B90,
    
    GL_STENCIL_CLEAR_VALUE = 0x0B91,
    
    GL_STENCIL_FUNC = 0x0B92,
    
    GL_STENCIL_VALUE_MASK = 0x0B93,
    
    GL_STENCIL_FAIL = 0x0B94,
    
    GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95,
    
    GL_STENCIL_PASS_DEPTH_PASS = 0x0B96,
    
    GL_STENCIL_REF = 0x0B97,
    
    GL_STENCIL_WRITEMASK = 0x0B98,
    
    GL_VIEWPORT = 0x0BA2,
    
    GL_DITHER = 0x0BD0,
    
    GL_BLEND_DST = 0x0BE0,
    
    GL_BLEND_SRC = 0x0BE1,
    
    GL_BLEND = 0x0BE2,
    
    GL_LOGIC_OP_MODE = 0x0BF0,
    
    GL_DRAW_BUFFER = 0x0C01,
    
    GL_READ_BUFFER = 0x0C02,
    
    GL_SCISSOR_BOX = 0x0C10,
    
    GL_SCISSOR_TEST = 0x0C11,
    
    GL_COLOR_CLEAR_VALUE = 0x0C22,
    
    GL_COLOR_WRITEMASK = 0x0C23,
    
    GL_DOUBLEBUFFER = 0x0C32,
    
    GL_STEREO = 0x0C33,
    
    GL_LINE_SMOOTH_HINT = 0x0C52,
    
    GL_POLYGON_SMOOTH_HINT = 0x0C53,
    
    GL_UNPACK_SWAP_BYTES = 0x0CF0,
    
    GL_UNPACK_LSB_FIRST = 0x0CF1,
    
    GL_UNPACK_ROW_LENGTH = 0x0CF2,
    
    GL_UNPACK_SKIP_ROWS = 0x0CF3,
    
    GL_UNPACK_SKIP_PIXELS = 0x0CF4,
    
    GL_UNPACK_ALIGNMENT = 0x0CF5,
    
    GL_PACK_SWAP_BYTES = 0x0D00,
    
    GL_PACK_LSB_FIRST = 0x0D01,
    
    GL_PACK_ROW_LENGTH = 0x0D02,
    
    GL_PACK_SKIP_ROWS = 0x0D03,
    
    GL_PACK_SKIP_PIXELS = 0x0D04,
    
    GL_PACK_ALIGNMENT = 0x0D05,
    
    GL_MAX_TEXTURE_SIZE = 0x0D33,
    
    GL_MAX_VIEWPORT_DIMS = 0x0D3A,
    
    GL_SUBPIXEL_BITS = 0x0D50,
    
    GL_TEXTURE_1D = 0x0DE0,
    
    GL_TEXTURE_2D = 0x0DE1,
    
    GL_TEXTURE_WIDTH = 0x1000,
    
    GL_TEXTURE_HEIGHT = 0x1001,
    
    GL_TEXTURE_BORDER_COLOR = 0x1004,
    
    GL_DONT_CARE = 0x1100,
    
    GL_FASTEST = 0x1101,
    
    GL_NICEST = 0x1102,
    
    GL_BYTE = 0x1400,
    
    GL_UNSIGNED_BYTE = 0x1401,
    
    GL_SHORT = 0x1402,
    
    GL_UNSIGNED_SHORT = 0x1403,
    
    GL_INT = 0x1404,
    
    GL_UNSIGNED_INT = 0x1405,
    
    GL_FLOAT = 0x1406,
    
    GL_STACK_OVERFLOW = 0x0503,
    
    GL_STACK_UNDERFLOW = 0x0504,
    
    GL_CLEAR = 0x1500,
    
    GL_AND = 0x1501,
    
    GL_AND_REVERSE = 0x1502,
    
    GL_COPY = 0x1503,
    
    GL_AND_INVERTED = 0x1504,
    
    GL_NOOP = 0x1505,
    
    GL_XOR = 0x1506,
    
    GL_OR = 0x1507,
    
    GL_NOR = 0x1508,
    
    GL_EQUIV = 0x1509,
    
    GL_INVERT = 0x150A,
    
    GL_OR_REVERSE = 0x150B,
    
    GL_COPY_INVERTED = 0x150C,
    
    GL_OR_INVERTED = 0x150D,
    
    GL_NAND = 0x150E,
    
    GL_SET = 0x150F,
    
    GL_TEXTURE = 0x1702,
    
    GL_COLOR = 0x1800,
    
    GL_DEPTH = 0x1801,
    
    GL_STENCIL = 0x1802,
    
    GL_STENCIL_INDEX = 0x1901,
    
    GL_DEPTH_COMPONENT = 0x1902,
    
    GL_RED = 0x1903,
    
    GL_GREEN = 0x1904,
    
    GL_BLUE = 0x1905,
    
    GL_ALPHA = 0x1906,
    
    GL_RGB  = 0x1907,
    
    GL_RGBA = 0x1908,
    
    GL_POINT= 0x1B00,
    
    GL_LINE = 0x1B01,
    
    GL_FILL = 0x1B02,
    
    GL_KEEP = 0x1E00,
    
    GL_REPLACE = 0x1E01,
    
    GL_INCR = 0x1E02,
    
    GL_DECR = 0x1E03,
    
    GL_VENDOR = 0x1F00,
    
    GL_RENDERER = 0x1F01,
    
    GL_VERSION = 0x1F02,
    
    GL_EXTENSIONS = 0x1F03,
    
    GL_NEAREST = 0x2600,
    
    GL_LINEAR = 0x2601,
    
    GL_NEAREST_MIPMAP_NEAREST = 0x2700,
    
    GL_LINEAR_MIPMAP_NEAREST = 0x2701,
    
    GL_NEAREST_MIPMAP_LINEAR = 0x2702,
    
    GL_LINEAR_MIPMAP_LINEAR = 0x2703,
    
    GL_TEXTURE_MAG_FILTER = 0x2800,
    
    GL_TEXTURE_MIN_FILTER = 0x2801,
    
    GL_TEXTURE_WRAP_S = 0x2802,
    
    GL_TEXTURE_WRAP_T = 0x2803,
    
    GL_REPEAT = 0x2901,
    
}

return enum
